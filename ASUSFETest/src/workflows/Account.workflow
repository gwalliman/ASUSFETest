<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Account_Site_Field</fullName>
        <description>Update Account Site field with Contact EMPLID, ASUrite ID, Birthdate, and email</description>
        <field>Site</field>
        <formula>LEFT((Contact__r.EMPLID__c &amp; &quot; | &quot; &amp;  Contact__r.ASURite_ID__c &amp; &quot; | &quot; &amp; TEXT(Contact__r.Birthdate) &amp; &quot; | &quot; &amp; Contact__r.Email),80)</formula>
        <name>Account: Update Account Site Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account%3A Update Account Site Field</fullName>
        <actions>
            <name>Update_Account_Site_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update with Contact EMPLID, ASUrite ID, Birthdate, and email.</description>
        <formula>Site &lt;&gt; LEFT((Contact__r.EMPLID__c &amp; &quot; | &quot; &amp;  Contact__r.ASURite_ID__c  &amp; &quot; | &quot; &amp; TEXT(Contact__r.Birthdate) &amp; &quot; | &quot; &amp; Contact__r.Email),80)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
