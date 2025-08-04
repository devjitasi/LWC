trigger CreateDummyContactTrigger on Account (after insert,before Delete,before insert) 
{
    if(Trigger.isAfter && Trigger.IsInsert)
    {
        List<Contact> contactList=new List<Contact>();
        for( Account acc:Trigger.new)
        {
            Contact con=new Contact();
            con.LastName=acc.name;
            con.firstName='Dummy';
            con.AccountId=acc.id;
            con.MailingCity=acc.BillingCity;
            con.MailingStreet=acc.BillingStreet;
            con.MailingState=acc.BillingState;
            contactList.add(con);
        }
        insert contactList; 
    }
    else if(Trigger.isBefore)
    {
        if(trigger.isDelete)
        {
          List<Account> accList=new List<Account>();
          Set<Id> accIdSet=new Set<Id>();
          for(Account acc:Trigger.old)
          {
              accIdSet.add(acc.id);
          }
            Map<Id,Account> accts=new Map<Id,Account>([select id,name,(select id from contacts) from account where id in :accIdSet]); 
            for(Account acc:Trigger.old)
            {
                if(accts.get(acc.id).contacts.size()>0)
                {
                    acc.addError('Account cannot be deleted because it has contacts associated with it');
                }
            }
        }
        else if(Trigger.isInsert)
        {
            For(Account acc:Trigger.new)
            {
                if(String.isBlank(acc.BillingCity))
                {
                    acc.BillingCity='Dallas';
                }
                if(String.isBlank(acc.BillingState))
                {
                    acc.BillingState='Texas';
                }
                if(String.isBlank(acc.AccountNumber))
                {
                   acc.AccountNumber='YYYY'; 
                }
                if(String.isBlank(acc.billingCountry))
                {
                    acc.BillingCountry='US';
                }
            }
        }
    }
       
    
}