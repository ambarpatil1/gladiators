<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Janati_RR__Round_Robin_Lead_Assignment</fullName>
        <description>Round Robin Lead Assignment</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Janati_RR__Round_Robin_Assignment/Janati_RR__Lead_Assignment_Notification</template>
    </alerts>
    <rules>
        <fullName>Janati_RR__Round Robin Assignment</fullName>
        <actions>
            <name>Janati_RR__Round_Robin_Lead_Assignment</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Janati_RR__Round_Robin_Assignee__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Evaluates when a round robin assignee is assigned in order to send an email to the lead owner on Create</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Janati_RR__Round Robin Assignment Changed</fullName>
        <actions>
            <name>Janati_RR__Round_Robin_Lead_Assignment</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Rule used to evaluate if the Round Robin Assignee changes in order to send an email alert to the new owner.</description>
        <formula>ISCHANGED( Janati_RR__Round_Robin_Assignee__c ) &amp;&amp; NOT(ISBLANK(Janati_RR__Round_Robin_Assignee__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>