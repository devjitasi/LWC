public class CreateAccount {
    public static Account addAccount(String Name){
         Account acct = new Account(Name=Name, Phone='(415)555-1212', NumberOfEmployees=100);
		insert acct;
        ID accID = acct.Id;
        System.debug('ID = '+accID);
        return acct;
    }
}