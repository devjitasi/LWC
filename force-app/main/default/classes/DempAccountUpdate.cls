public with sharing class DempAccountUpdate {
    public DempAccountUpdate() {

    }
    public string updateAccountTestRecords() {
        List<Account> accList = [SELECT Id, Name, Phone FROM Account WHERE Name = 'Jitender Asija'];
        for(Account acc : accList) {
            acc.Phone = '1234567890';
        }
        update accList;
        return 'Account records updated successfully';
    }
}