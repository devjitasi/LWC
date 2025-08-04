global class StudentSoapService{
    webservice static StudentObject__c getStudent(String studentId){
       StudentObject__c student = [select id, Student_Name__c, Phone_Number__c, School__c, Email__c from StudentObject__c where id=:studentId ];
       return student;
    }
}