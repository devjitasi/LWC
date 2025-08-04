public with sharing class LeadTriggerHandler extends TriggerHandler {
    List<Lead> leads;
    public LeadTriggerHandler() {
        // Constructor logic if needed
        leads = (List<Lead>)Trigger.new;
    }
    override protected virtual void beforeInsert(){
        System.debug('LeadTriggerHandler beforeInsert running');
        // Custom logic for before insert
    }
}