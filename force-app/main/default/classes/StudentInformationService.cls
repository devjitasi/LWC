@RestResource(urlMapping='/studentsInfo/*')
global class StudentInformationService{
    global class StudentInfo{
          String studentName{get;set; }
          String studentAddress{get;set; }
          String studentPhone{get;set; }
          String schoolName{get;set; }

    }
    @httpGet
    global static StudentInfo getStudent(){
    RestRequest request = RestContext.Request;
    String studentId = request.requestURI.substring(request.RequestURI.lastIndexOf('/')+1);
    StudentObject__c student = [select id, Name, Address__c, student_name__c, 
    Phone_Number__c,school__r.name from StudentObject__c where id =:studentId ];
     StudentInfo stdInfo = new StudentInfo();
     stdInfo.studentName = student.student_name__c;
     stdInfo.studentAddress= student.Address__c;
     stdInfo.studentPhone= student.Phone_Number__c;
     stdInfo.schoolName= student.school__r.name;

        return stdInfo;
    }

}