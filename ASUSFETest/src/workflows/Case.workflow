<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Team_Members</fullName>
        <description>Email RegTech case team members when case assigned</description>
        <protected>false</protected>
        <recipients>
            <recipient>bburm@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>blloyd@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>cahoffma@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>csmith@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jfischer@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>klkear@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>maray1@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>prgjmg@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>prgllj@asu.edu</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Case_Management/Change_Case_Owner_Template</template>
    </alerts>
    <alerts>
        <fullName>Forward_Case_to_External_Unit</fullName>
        <description>Forward Case to External Unit</description>
        <protected>false</protected>
        <recipients>
            <field>Forward_To_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Case_Management/Forward_Case_to_External_Unit_Default</template>
    </alerts>
    <fieldUpdates>
        <fullName>Set_Category_to_General_Help_Desk</fullName>
        <field>Category__c</field>
        <literalValue>General Help Desk</literalValue>
        <name>Set Category to General Help Desk</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Category_to_NULL</fullName>
        <field>Category__c</field>
        <name>Set Category to NULL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Forward_Case_To_Email</fullName>
        <field>Forward_To_Email__c</field>
        <formula>Forward_To_Email_Calculation__c</formula>
        <name>Set Forward Case To Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Forward_to_Unit_to_Other_Unit</fullName>
        <field>Forward_To_Unit__c</field>
        <literalValue>Other Unit</literalValue>
        <name>Set Forward to Unit to Other Unit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Functional_Group_to_ASU_Online</fullName>
        <field>Functional_Group__c</field>
        <literalValue>ASU Online</literalValue>
        <name>Set Functional Group to ASU Online</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Functional_Group_to_Admision_Service</fullName>
        <field>Functional_Group__c</field>
        <literalValue>Admission Services - Graduate</literalValue>
        <name>Set Functional Group to Admision Service</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Functional_Group_to_ESM_Online</fullName>
        <field>Functional_Group__c</field>
        <literalValue>ESM Online</literalValue>
        <name>Set Functional Group to ESM Online</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Functional_Group_to_Financial_Aid</fullName>
        <description>Assigns case to financial aid functional group.</description>
        <field>Functional_Group__c</field>
        <literalValue>Financial Aid</literalValue>
        <name>Set Functional Group to Financial Aid</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Functional_Group_to_Help_Desk</fullName>
        <field>Functional_Group__c</field>
        <literalValue>Help Desk</literalValue>
        <name>Set Functional Group to Help Desk</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Functional_Group_to_Registrar</fullName>
        <description>Sets functional group to Registrar.</description>
        <field>Functional_Group__c</field>
        <literalValue>Registrar</literalValue>
        <name>Set Functional Group to Registrar</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Functional_Group_to_SBS</fullName>
        <description>Set Functional Group to Student Business Services.</description>
        <field>Functional_Group__c</field>
        <literalValue>Student Business Services</literalValue>
        <name>Set Functional Group to SBS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Origin_to_My_ASU</fullName>
        <field>Origin__c</field>
        <literalValue>My ASU</literalValue>
        <name>Set Origin to My ASU</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Owner_to_Help_Desk_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Help_Desk_Case</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Set Owner to Help Desk Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Sub_Category_to_null</fullName>
        <field>Sub_Category_del__c</field>
        <name>Set Sub-Category to NULL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Forward Case to External Unit</fullName>
        <actions>
            <name>Forward_Case_to_External_Unit</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Closed: Forwarded</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Forward_To_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify members of RegTech new case created or updated</fullName>
        <actions>
            <name>Email_Team_Members</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Category__c</field>
            <operation>equals</operation>
            <value>RegTech</value>
        </criteriaItems>
        <description>Workflow to send email alert to RegTech members that a case status has changed.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Fields for My ASU Submission</fullName>
        <actions>
            <name>Set_Category_to_General_Help_Desk</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Functional_Group_to_Help_Desk</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Origin_to_My_ASU</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Owner_to_Help_Desk_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Web_Submission__c</field>
            <operation>equals</operation>
            <value>My ASU Standard</value>
        </criteriaItems>
        <description>When a case is created with &quot;My ASU Standard&quot; passed into the Web Submission field, the following other field values are set -

Case Origin: My ASU
Functional Group: Help Desk
Category: General Help Desk
Owner: Help Desk Queue</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Set Forward Case To Email</fullName>
        <actions>
            <name>Set_Forward_Case_To_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Forward_To_Email_Calculation__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Forward_To_Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set Forward to Unit to Other Unit</fullName>
        <actions>
            <name>Set_Forward_to_Unit_to_Other_Unit</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Forward_To_Unit__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Forward_To_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>If the Forward to Unit is left blank, but a Forward to Email is Provided, set the Forward to Unit to &quot;Other Unit&quot;.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Transfer Case to ASU Online %28Case%29</fullName>
        <actions>
            <name>Set_Category_to_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Functional_Group_to_ASU_Online</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Sub_Category_to_null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rule for a Case being Transferred to the &quot;ASU Online (Case)&quot; Queue.  Clears the Category and sets the Functional Group to &quot;ASU Online&quot;.</description>
        <formula>ISCHANGED(OwnerId)  &amp;&amp;  Owner:Queue.QueueName = &quot;ASU Online (Case)&quot; &amp;&amp; NOT(BEGINS($User.Username,&quot;asuemailservice@asu.edu&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Transfer Case to Admission Services %28Case%29</fullName>
        <actions>
            <name>Set_Category_to_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Functional_Group_to_Admision_Service</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Sub_Category_to_null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rule for a Case being Transferred to the &quot;Admission Services - Graduate (Case)&quot; Queue. Clears the Category and sets the Functional Group to &quot;Admission Services&quot;</description>
        <formula>ISCHANGED(OwnerId)   &amp;&amp;   Owner:Queue.QueueName = &quot;Admission Services - Graduate (Case)&quot; &amp;&amp; NOT(BEGINS($User.Username,&quot;asuemailservice@asu.edu&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Transfer Case to ESM Online %28Case%29</fullName>
        <actions>
            <name>Set_Category_to_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Functional_Group_to_ESM_Online</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Sub_Category_to_null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rule for a Case being Transferred to the &quot;ESM Online (Case)&quot; Queue.  Clears the Category and sets the Functional Group to &quot;ESM Online&quot;.</description>
        <formula>ISCHANGED(OwnerId)  &amp;&amp;  Owner:Queue.QueueName = &quot;ESM Online (Case)&quot; &amp;&amp; NOT(BEGINS($User.Username,&quot;asuemailservice@asu.edu&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Transfer Case to Financial Aid %28Case%29</fullName>
        <actions>
            <name>Set_Category_to_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Functional_Group_to_Financial_Aid</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Sub_Category_to_null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rule for a Case being Transferred to the &quot;Financial Aid General (Case)&quot; Queue.  Clears the Category and sets the Functional Group to &quot;Financial Aid&quot;.</description>
        <formula>ISCHANGED(OwnerId) &amp;&amp; Owner:Queue.QueueName = &quot;Financial Aid (Case)&quot; &amp;&amp; NOT(BEGINS($User.Username,&quot;asuemailservice@asu.edu&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Transfer Case to Help Desk %28Case%29</fullName>
        <actions>
            <name>Set_Category_to_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Functional_Group_to_Help_Desk</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Sub_Category_to_null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rule for a Case being Transferred to the &quot;Help Desk (Case)&quot; Queue.  Clears the Category and sets the Functional Group to &quot;Help Desk&quot;.</description>
        <formula>ISCHANGED(OwnerId)  &amp;&amp;  Owner:Queue.QueueName = &quot;Help Desk (Case)&quot; &amp;&amp; NOT(BEGINS($User.Username,&quot;asuemailservice@asu.edu&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Transfer Case to Student Business Services %28Case%29</fullName>
        <actions>
            <name>Set_Category_to_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Functional_Group_to_SBS</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Sub_Category_to_null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rule for a Case being Transferred to the &quot;Student Business Services (Case)&quot; Queue. Clears the Category and sets the Functional Group to &quot;Student Business Services&quot;.</description>
        <formula>ISCHANGED(OwnerId)  &amp;&amp;  Owner:Queue.QueueName = &quot;Student Business Services (Case)&quot; &amp;&amp; NOT(BEGINS($User.Username,&quot;asuemailservice@asu.edu&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Transfer Case to University Registrar Services %28Case%29</fullName>
        <actions>
            <name>Set_Category_to_NULL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Functional_Group_to_Registrar</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Sub_Category_to_null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rule for a Case being Transferred to the &quot;University Registrar Services (Case)&quot; Queue.  Clears the Category and sets the Functional Group to &quot;Registrar&quot;.</description>
        <formula>ISCHANGED(OwnerId)  &amp;&amp;  Owner:Queue.QueueName = &quot;University Registrar Services (Case)&quot; &amp;&amp; NOT(BEGINS($User.Username,&quot;asuemailservice@asu.edu&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
