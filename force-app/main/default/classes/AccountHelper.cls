public with sharing class AccountHelper {
      if (Trigger.isBefore && Trigger.isInsert) {
        AccountTriggerHandler.beforeInsertLogic(Trigger.new);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        AccountTriggerHandler.afterInsertLogic(Trigger.new);
    }
}