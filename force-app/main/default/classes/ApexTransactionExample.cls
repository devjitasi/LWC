public class ApexTransactionExample {
    public boolean insertAccountAndLead(String accName,String SLA, String leadFirstName,String leadLastName, String company){
        Account a1 = new Account(Name=accName, SLA__c = SLA);
        insert a1;
        Lead l1 = new Lead(FirstName=leadFirstName,LastName=leadLastName,Company=company);
        insert l1;
    	return true;
    }
}