 public virtual class TriggerHandler {
    private TriggerContext context;
    public TriggerHandler() {
        // Constructor logic if needed
        System.debug('Trigger Handler constructor running');
        this.setTriggerContext();
    }
    
    public void run(){
        System.debug('Trigger Handler run running');
        //Dispatch the correct handler method based on the trigger context
        if(Trigger.isExecuting && Trigger.isBefore && Trigger.isInsert){
            this.context = TriggerContext.BEFORE_INSERT;
        } else if(Trigger.isExecuting && Trigger.isAfter && Trigger.isInsert){
            this.context = TriggerContext.AFTER_INSERT;
        } else if(Trigger.isExecuting && Trigger.isBefore && Trigger.isUpdate){
            this.context = TriggerContext.BEFORE_UPDATE;
        } else if(Trigger.isExecuting && Trigger.isAfter && Trigger.isUpdate){
            this.context = TriggerContext.AFTER_UPDATE;
        } else if(Trigger.isExecuting && Trigger.isBefore && Trigger.isDelete){
            this.context = TriggerContext.BEFORE_DELETE;
        } else if(Trigger.isExecuting && Trigger.isAfter && Trigger.isDelete){
            this.context = TriggerContext.AFTER_DELETE;
        } else if(Trigger.isExecuting && Trigger.isAfter && Trigger.isUndelete){
            this.context = TriggerContext.AFTER_UNDELETE;
        } else {
            throw new IllegalStateException('Unsupported trigger context'); 
        }
    }

    @TestVisible
    public void setTriggerContext() {
        this.setTriggerContext(false);
    }

    //Context specific methods for overriding
    @TestVisible
    protected virtual void beforeInsert(){}

    @TestVisible
    protected virtual void afterInsert(){}

    @TestVisible
    protected virtual void beforeUpdate(){}

    @TestVisible
    protected virtual void afterUpdate(){}

    @TestVisible
    protected virtual void beforeDelete(){}

    @TestVisible
    protected virtual void afterDelete(){}

    @TestVisible
    protected virtual void afterUndelete(){}

    // possible trigger contexts
    @TestVisible
    private enum TriggerContext{
        BEFORE_INSERT,
        AFTER_INSERT,
        BEFORE_UPDATE,
        AFTER_UPDATE,
        BEFORE_DELETE,
        AFTER_DELETE,
        AFTER_UNDELETE
    }
}