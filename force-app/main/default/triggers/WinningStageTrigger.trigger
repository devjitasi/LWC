trigger WinningStageTrigger on Opportunity (before Update) {

    for(Opportunity opp:Trigger.new){
        Opportunity oldOppp = Trigger.OldMap.get(opp.Id);
        Boolean oldOppIsWon = oldOppp.StageName.equals('Closed Won');
        Boolean newOppisWon =  opp.StageName.equals('Closed Won');
        if(!oldOppisWon && newOppisWon){
            opp.Is_Value_Correct__c = true;
        }
        
    }

}