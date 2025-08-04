@RestResource(urlMapping='/Cases/*')
global with sharing class CaseManager {
	
@HttpGet
    global static  Case getCaseById(){
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
		Case result = [Select caseNumber, Subject, Status, Origin, Priority From Case where Id=:caseId];
        return result;
    }
@HttpPost
    global static Id createCase(String subj, string status, String origin, String priority){
	     Case newCase = new Case(Subject=subj,Status = status,Origin=origin, Priority=priority);
        insert newCase;
    
    return newCase.Id;
    }
@HttpDelete
    global static void deleteCase(){
     RestRequest request = RestContext.request;
     String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
     Case deletedRecord =[Select id from Case where id=:caseId];
     delete deletedRecord;
    }
    
@HttpPut
    global static ID upsertCase(String subject, string status, String origin, String priority, String id){
        Case thisCase =new Case(Id=id,Subject=subject,status=status, origin = origin, priority=priority);
        upsert thisCase;
        return thisCase.Id;
    }
@HttpPatch
    global static ID updateCaseField(){
       RestRequest request = RestContext.request;
       String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1); 
       Case thisCase = [Select id from case where id=:caseId ];
       Map<String,Object> params =  (Map<String,Object>)JSON.deserializeUntyped(request.requestBody.toString());
        for(String fieldName:params.keySet()){
            thisCase.put(fieldName, params.get(fieldName));
        }
        update thisCase;
        return thisCase.Id;
           
    }
}