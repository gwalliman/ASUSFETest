<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Contact_Owner</fullName>
        <description>Assign owner to Salesforce Admin on create or update</description>
        <field>OwnerId</field>
        <lookupValue>gradsalesforce@asu.edu</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact: Assign Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Sync_to_Silverpop</fullName>
        <field>silverpop__Sync_to_Silverpop_Chk__c</field>
        <literalValue>1</literalValue>
        <name>Contact: Sync to Silverpop</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Update_ASU_Gmail</fullName>
        <description>Update ASU Gmail address to ASUriteID@asu.edu</description>
        <field>ASU_Gmail__c</field>
        <formula>ASURite_ID__c +&quot;@asu.edu&quot;</formula>
        <name>Contact: Update ASU Gmail</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Update_Do_Not_Call_If_Deceased</fullName>
        <description>Update Do Not Call field to TRUE when Deceased = TRUE</description>
        <field>DoNotCall</field>
        <literalValue>1</literalValue>
        <name>Contact: Update Do Not Call If Deceased</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Change_Reason_Directory_Change</fullName>
        <field>Email_Change_Reason__c</field>
        <formula>&quot;Directory Email changed&quot;</formula>
        <name>Email Change Reason: Directory Change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Change_Reason_Directory_Create</fullName>
        <field>Email_Change_Reason__c</field>
        <formula>&quot;Set to Directory Email on creation&quot;</formula>
        <name>Email Change Reason: Directory Create</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Change_Reason_Lead_Create</fullName>
        <field>Email_Change_Reason__c</field>
        <formula>&quot;Set to Lead Email on creation&quot;</formula>
        <name>Email Change Reason: Lead Create</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Change_Reason_Lead_Email_Changed</fullName>
        <field>Email_Change_Reason__c</field>
        <formula>&quot;Lead Email changed&quot;</formula>
        <name>Email Change Reason: Lead Email Changed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Change_Reason_Preferred_Create</fullName>
        <field>Email_Change_Reason__c</field>
        <formula>&quot;Set to Prefered Email on creation&quot;</formula>
        <name>Email Change Reason: Preferred Create</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Changed_Date_Set_to_Now</fullName>
        <field>Email_Change_Date__c</field>
        <formula>NOW()</formula>
        <name>Email Changed Date: Set to Now</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Changed_Reason_Other</fullName>
        <field>Email_Change_Reason__c</field>
        <formula>&quot;Other&quot;</formula>
        <name>Email Changed Reason: Other</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Set_to_Directory_Email</fullName>
        <field>Email</field>
        <formula>ASU_Email__c</formula>
        <name>Email: Set to Directory Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Set_to_Lead_Email</fullName>
        <description>Updating primary email to Lead Email</description>
        <field>Email</field>
        <formula>Lead_Email__c</formula>
        <name>Email: Set to Lead Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Set_to_Preferred_Email</fullName>
        <field>Email</field>
        <formula>Preferred_Email__c</formula>
        <name>Email: Set to Preferred Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opt_Out_If_Deceased</fullName>
        <field>HasOptedOutOfEmail</field>
        <literalValue>1</literalValue>
        <name>Contact: Update Opt Out If Deceased</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Contact%3A Sync to Silverpop</fullName>
        <actions>
            <name>Contact_Sync_to_Silverpop</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Set Sync to Silverpop = true when recipientID is not blank</description>
        <formula>ISBLANK( silverpop__Silverpop_RecipientID__c )  = false</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact%3A Update ASU Gmail</fullName>
        <actions>
            <name>Contact_Update_ASU_Gmail</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.ASURite_ID__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update ASU Gmail to ASUriteID@asu.edu where the ASUriteID field is not blank</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact%3A Update Communication If Deceased</fullName>
        <actions>
            <name>Contact_Update_Do_Not_Call_If_Deceased</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opt_Out_If_Deceased</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Deceased__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Opt Out = True if the Contact field Deceased = True
Do Not Call = True if the Contact field Deceased = True</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact%3A Update Owner Assignment</fullName>
        <actions>
            <name>Contact_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.OwnerId</field>
            <operation>notEqual</operation>
            <value>Salesforce Admin</value>
        </criteriaItems>
        <description>Assign Contact to Salesforce Admin when it is created or updated</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email %E2%80%93 Other Change Reason and Date</fullName>
        <actions>
            <name>Email_Changed_Date_Set_to_Now</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Changed_Reason_Other</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If the Email is changed by a process other than a Directory Email change or an inbound Case Email change, update the Email Change Reason and Date.</description>
        <formula>NOT(ISCHANGED(ASU_Email__c)) &amp;&amp; NOT(Last_Case_Email_Used__c = Email) &amp;&amp; ISCHANGED(Email)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email - Set to Directory Email on Change</fullName>
        <actions>
            <name>Email_Change_Reason_Directory_Change</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Changed_Date_Set_to_Now</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Set_to_Directory_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If the Directory Email changes (indicating a new Directory Email for the Contact from PeopleSoft), set the Email to the value in Directory Email.</description>
        <formula>ISCHANGED(ASU_Email__c) &amp;&amp; NOT(ISBLANK (ASU_Email__c)) &amp;&amp; NOT(ASU_Email__c = Email)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email - Set to Directory Email on Create</fullName>
        <actions>
            <name>Email_Change_Reason_Directory_Create</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Changed_Date_Set_to_Now</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Set_to_Directory_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If a new record is created, with a Directory Email and no Email, the Email will be set to the Directory Email.</description>
        <formula>NOT(ISBLANK(ASU_Email__c)) &amp;&amp; ISBLANK(Email)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Email - Set to Lead Email on Change</fullName>
        <actions>
            <name>Email_Change_Reason_Lead_Email_Changed</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Changed_Date_Set_to_Now</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Set_to_Lead_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If the Lead Email changes (indicating a new Lead Email for the Contact from web form submission), set the Email to the value in Lead Email.</description>
        <formula>NOT(ISCHANGED(ASU_Email__c)) &amp;&amp; NOT(Lead_Email__c = Email) &amp;&amp; ISCHANGED(Lead_Email__c) &amp;&amp; NOT(ISBLANK(Lead_Email__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email - Set to Lead Email on Create</fullName>
        <actions>
            <name>Email_Change_Reason_Lead_Create</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Changed_Date_Set_to_Now</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Set_to_Lead_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If a new record is created, with a Lead Email and no Email, the Email will be set to the Lead Email.</description>
        <formula>NOT(ISBLANK( Lead_Email__c )) &amp;&amp; ISBLANK(Email) &amp;&amp; ISBLANK( ASU_Email__c )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Email - Set to Preferred Email on Create</fullName>
        <actions>
            <name>Email_Change_Reason_Preferred_Create</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Changed_Date_Set_to_Now</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Set_to_Preferred_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If a new record is created, with a Preferred Email and no Directory Email and no Email, the Email will be set to the Preferred Email.</description>
        <formula>NOT(ISBLANK(Preferred_Email__c)) &amp;&amp; ISBLANK(ASU_Email__c) &amp;&amp; ISBLANK(Email)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
