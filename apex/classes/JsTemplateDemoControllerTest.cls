@isTest
private class JsTemplateDemoControllerTest {

    private static User testAdminUser = new User(Id = UserInfo.getUserId());

    /**
     * コンストラクタ
     */
    static testMethod void JsTemplateDemoControllerTest1() {

        System.runAs(testAdminUser) {

            Test.startTest();

            JsTemplateDemoController cls = new JsTemplateDemoController(new ApexPages.StandardController(new Account()));

            Test.stopTest();

            System.assertEquals(String.isEmpty(cls.account.Id), true);
        }
    }

    /**
     * 取引先責任者取得
     */
    static testMethod void getContactsTest1() {

        System.runAs(testAdminUser) {

            Test.startTest();

            String accountId = '';
            List<Contact> results = JsTemplateDemoController.getContacts(accountId);

            Test.stopTest();

            System.assertEquals(results.isEmpty(), true);
        }
    }
}