public with sharing class CreateContacts {
    public CreateContacts() {
        // Constructor logic if needed
        this.contacts = new List<Contact>();
    }

public List<Contact> getContacts() {
        return contacts;
    }

    public void setContacts(List<Contact> contacts) {
        this.contacts = contacts;
    }
    public void addContact(Contact contact) {
        this.contacts.add(contact);
    }
    
}