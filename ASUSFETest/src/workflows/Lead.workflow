<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Company_Update</fullName>
        <description>Update Company field to be First Name + Last Name</description>
        <field>Company</field>
        <formula>FirstName+&quot; &quot;+LastName</formula>
        <name>Lead: Company Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Owner</fullName>
        <description>Change to Salesforce Admin</description>
        <field>OwnerId</field>
        <lookupValue>gradsalesforce@asu.edu</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Lead: Assign Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Sync_to_Silverpop</fullName>
        <description>Check the Sync to Silverpop checkbox when a Lead record is created.</description>
        <field>silverpop__Sync_to_Silverpop_Chk__c</field>
        <literalValue>1</literalValue>
        <name>Lead: Sync to Silverpop</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Status</fullName>
        <description>If Lead Source not equal to Purchase List, then Lead Status = Prospect. Update on Lead creation only</description>
        <field>Status</field>
        <literalValue>Prospect</literalValue>
        <name>Lead: Update Lead Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Recruiting_Email</fullName>
        <description>Update the recruiting email field with the current email address on the Lead record.</description>
        <field>Recruiting_Email__c</field>
        <formula>Email</formula>
        <name>Lead: Update Recruiting Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Lead%3A Sync to Silverpop</fullName>
        <actions>
            <name>Lead_Sync_to_Silverpop</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Set Sync to Silverpop = TRUE when a Lead record is created. Allows the record to be shared to Silverpop for mass email marketing.</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Lead.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead%3A Update Company Field</fullName>
        <actions>
            <name>Company_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Company to First Name + Last Name on the Lead record.</description>
        <formula>Company &lt;&gt;  FirstName + &quot; &quot; + LastName</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead%3A Update Lead Status</fullName>
        <actions>
            <name>Update_Lead_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>notEqual</operation>
            <value>Purchased List,ASU UG</value>
        </criteriaItems>
        <description>Changes Lead Status to Prospect when a Lead record is created with the Lead Source not equal to Purchased List</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Lead%3A Update Owner Assignment</fullName>
        <actions>
            <name>Lead_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.OwnerId</field>
            <operation>notEqual</operation>
            <value>Salesforce Admin</value>
        </criteriaItems>
        <description>Changes Lead Ownership to Salesforce Admin when record is created or updated.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead%3A Update Recruiting Email</fullName>
        <actions>
            <name>Update_Recruiting_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update Recruiting Email address with Lead Email address to transfer to Contact record</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
