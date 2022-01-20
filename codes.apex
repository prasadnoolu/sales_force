
==============================================================
to create a simple controller and page /view with input text
==========================================================
====================controller ==========

public with sharing class EmployeeInsertController {

    public String EmployeeInsertController { get; set; }

    public Date edob{get;set;}
    
    public void saveEmp() {
        Employ__c emp=new Employ__c();
        emp.Name= ename;
        emp.salary__c=esal;
        emp.dob__c=Date.newinstance(1995,05,01);
        insert emp;
    }




    public Integer esal { get; set; }

    public String ename { get; set; }
}


=======================================================

Page:
=============================================================================

    <apex:page controller="EmployeeInsertController">
        <apex:form >
            <apex:pageBlock title="Employee Information">
                
                
                <apex:pageBlockSection >
                
                
                    <apex:pageBlockSectionItem >
                        <apex:outputLabel >Enter Emplyee Name</apex:outputLabel>
                        <apex:inputText value="{!ename}"/>
                    </apex:pageBlockSectionItem>
                    
                    
                    <apex:pageBlockSectionItem >
                    <apex:outputLabel >Enter Expected Salary</apex:outputLabel>
                    <apex:inputText value="{!esal}"/>
                    </apex:pageBlockSectionItem>
                   
                   
                    <apex:pageBlockSectionItem >
                    <apex:outputLabel >Enter Date of Birth </apex:outputLabel>
                    <apex:inputText value="{!edob}"/>
                    </apex:pageBlockSectionItem> 
                    
                    

                
                </apex:pageBlockSection>
            
                    <apex:pageBlockButtons location="bottom">
                    <apex:commandButton value="Submit" action="{!saveEmp}" />
                    </apex:pageBlockButtons>
                    
                    
                    
            </apex:pageBlock>
        </apex:form>

    </apex:page>
    
    
==============================================================
to create a simple controller and page /view with input Field
==========================================================

===========Apex page=============================
<apex:page controller="EmployeeSaveController">
    <apex:form >
        <apex:pageBlock title="Employee Information">
            
            
            <apex:pageBlockSection >
            
            
                <apex:pageBlockSectionItem >
                    <apex:outputLabel >Enter Emplyee Name</apex:outputLabel>
                    <apex:inputField value="{!emp.Name}"/>
                </apex:pageBlockSectionItem>
                
                
                <apex:pageBlockSectionItem >
                <apex:outputLabel >Enter Expected Salary</apex:outputLabel>
                <apex:inputField value="{!emp.salary__c}"/>
                </apex:pageBlockSectionItem>
               
           
                <apex:pageBlockSectionItem >
                <apex:outputLabel >Enter Date of Birth </apex:outputLabel>
                <apex:inputField value="{!emp.Dob__c}"/>
                </apex:pageBlockSectionItem> 
                
                

            
            </apex:pageBlockSection>
        
                <apex:pageBlockButtons location="bottom">
                <apex:commandButton value="Submit" action="{!saveemp}" />
                </apex:pageBlockButtons>
                
                
                
        </apex:pageBlock>
    </apex:form>

</apex:page>



===================================================================
Controller
===================================================================

public with sharing class EmployeeSaveController {

   public Employ__c emp{ get; set; }
    public  EmployeeSaveController (){
    emp= new Employ__c();

    }

    public PageReference saveemp(){

        try{
            INSERT emp;
        }
        catch (exception e){
            
        }
        return null;
    }
}






    
    
    
    
