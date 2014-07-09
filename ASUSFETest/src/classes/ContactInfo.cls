global with sharing class ContactInfo {

    public ContactInfo(TestController controller) {

    }


    public ContactInfo(ApexPages.StandardController controller) {
 
    }

    // public User contId {get;set;}
    public Id contId = [SELECT ContactId FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1].ContactId;


    public List<Contact> getContact() {
        return [SELECT Id, Name, EmplId__c, CAP__c, CAP_Student_Group_Count__c FROM Contact WHERE Id = :contId];
    }
    
    public Contact getName() {
        return [SELECT FirstName FROM Contact WHERE Id = :contId];
    }

}