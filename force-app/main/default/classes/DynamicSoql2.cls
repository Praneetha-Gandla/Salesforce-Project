public class DynamicSoql2 {
    public void method() {
        String qr='select id';

        String []fields = new List<String>();
        fields.add('Name');
        fields.add('Phone');

        String objName='Account';
        System.debug('obj Name');


        for(String f:fields){
            qr+= ','+f;
        }

        qr+= 'from'+objName;

        System.debug(qr);

        List<Account> list1=Database.query(qr);
    }
}