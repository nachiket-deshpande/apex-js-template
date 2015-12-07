public with sharing class JsTemplateDemoController {
    
    public Account account {get; set;}
    
    /**
     * コンストラクタ
     */
    public JsTemplateDemoController(ApexPages.StandardController stdController) {
        this.account = (Account)stdController.getRecord();
    }
    
    /**
     * 取引先責任者取得
     */
    @RemoteAction
    public static List<Contact> getContacts(String accountId) {
        return [SELECT Id,LastName,FirstName FROM Contact WHERE AccountId =: accountId LIMIT 200];
    }
}