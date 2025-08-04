global class ContactSearch implements Database.Batchable<sObject> {
 global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'select id from Contact where FirstName =null';
       
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Contact> scope)
    {
        
        for(Contact contact : scope)
        {
            Task task = new Task();
            task.subject='Find Name';
            task.WhoId=contact.id;
            task.OwnerId = contact.OwnerId;
            //a.Name = a.Name + 'Updated by Batch job';
        }
        update scope;
    }
    global void finish(Database.BatchableContext BC) {
    }
}