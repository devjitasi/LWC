public with sharing class LinkAccountContact {
    Contact contact;
    
    public LinkAccountContact(Contact contact) {
        this.contact = contact;
    }   

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }
    public void linkAccount(Account account) {
        this.contact.Account = account;
    }
}