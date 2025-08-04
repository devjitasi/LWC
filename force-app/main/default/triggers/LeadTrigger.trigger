trigger LeadTrigger on Lead (before insert, after insert, before update, after update, before delete, after delete , after undelete) {
   System.debug('Lead Trigger running');
   new LeadTriggerHandler().run();
}