public class AccountInsert {

    public static void insertAccount(){
        try{
            addAccount();
        }   
        catch(AcctException e){
            System.debug('AcctException Exception in insertAccount '+e.getMessage());
            System.debug('Cause in insertAccount() '+ e.getCause());
                        System.debug('Line Number '+e.getLineNumber());

        }
    }
    public static void updateAccount(){
        try{
          Account a = [select id,Name,billingCity from Account where Name='JitenderAccount1'];
            a.BillingCity='Bhopal';
            update a;
        }
        catch(DMLException dml){
            System.debug('DML excetion in updat account '+dml.getMessage());
        }
            
	}
    public static void addAccount(){
        try{
        Account a = new Account(Name='JitenderAccount1');
        insert a;
        }
        catch(DMLException d){
            System.debug('dml Exception '+d.getMessage());
            System.debug('Cause in addAccount() '+ d.getCause());
            System.debug('Line Number '+d.getLineNumber());

            throw new AcctException('No FirstName in the account entered');
        }
    }
}