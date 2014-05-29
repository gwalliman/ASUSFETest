<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Opportunity_Update_Name_Field</fullName>
        <description>Update name field of the opportunity when created by API ASU Drupal</description>
        <field>Name</field>
        <formula>Contact__r.FirstName + &quot; &quot; + Contact__r.LastName + &quot; &quot; + TEXT(Year( DATEVALUE(CreatedDate) )) + TEXT(Month( DATEVALUE(CreatedDate) )) + TEXT(Day( DATEVALUE(CreatedDate) ))</formula>
        <name>Opportunity: Update Name Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Opportunity%3A Update Name Field</fullName>
        <actions>
            <name>Opportunity_Update_Name_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.CreatedById</field>
            <operation>equals</operation>
            <value>API ASU Drupal</value>
        </criteriaItems>
        <description>Update the Opportunity name field when there is a RFI submission. Looking for created by ASU Drupal</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
