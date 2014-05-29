<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Lead_Staus_to_Opt_Out</fullName>
        <description>Change Lead Status to Opt-Out when Lead Interest is Active and Qualifying is No Longer Interested</description>
        <field>Status__c</field>
        <literalValue>Opt Out</literalValue>
        <name>Lead: Update Staus to Opt Out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Interest_Owner</fullName>
        <description>Update Lead Interest Owner to Salesforce Admin</description>
        <field>OwnerId</field>
        <lookupValue>gradsalesforce@asu.edu</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Lead Interest:Update Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Type_Contact</fullName>
        <description>Update type to Contact if the formula = FALSE</description>
        <field>Type__c</field>
        <literalValue>Contact</literalValue>
        <name>Lead Interest: Update Type Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Type_Lead</fullName>
        <description>Update Lead Interest Type to Lead</description>
        <field>Type__c</field>
        <literalValue>Lead</literalValue>
        <name>Lead Interest: Update Type Lead</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Lead Interest%3A Update Lead  Status when NLI</fullName>
        <actions>
            <name>Lead_Staus_to_Opt_Out</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead_Interest__c.Status__c</field>
            <operation>equals</operation>
            <value>Active</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead_Interest__c.Qualifying__c</field>
            <operation>equals</operation>
            <value>No Longer Interested</value>
        </criteriaItems>
        <description>When a student is no longer interested in a plan and the current status is Active. If a person changes Qualifying, the status will be changed to Opt-Out.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead Interest%3A Update Owner Assignment</fullName>
        <actions>
            <name>Update_Lead_Interest_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead_Interest__c.OwnerId</field>
            <operation>notEqual</operation>
            <value>Salesforce Admin</value>
        </criteriaItems>
        <description>Update owner to Salesforce Admin to allow for the record to be shared across the org.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Interest%3A Update Type</fullName>
        <actions>
            <name>Update_Type_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If the Lead field is blank, then Type = Contact.</description>
        <formula>ISBLANK( Leads__c )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
