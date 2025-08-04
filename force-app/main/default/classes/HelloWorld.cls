public class HelloWorld extends HelloUniverse {
    integer[] a = new integer[4];
    List<String> names = new List<String>();
    Set<String> myset = new Set<String>();
    Map<String, Integer> Age = new Map<String, Integer>();
    public static void hello(){
        System.debug('Hello World Welcome');
        for(integer k = 0;k<5;k++){
            System.debug('Printing '+k);
        }
    }
    public void myWorld(){
        System.debug('Inside MyHelloWorld');
    }
    public override void  hello2(){
        System.debug('In the override');
        names.add('Jeetu');
        names.add('Asija');
        System.debug('List names '+names);
        a.set(0, 0);
        a.set(1,1);
        a.set(2,2);
                System.debug('a  '+a);
        myset.add('apple');
        myset.add('apple');
        System.debug('myset '+myset);
        Age.put('asija', 37);
        Age.put('Rony',2002);
        System.debug('Map '+Age);
        Map<String,String> myMap = new Map<String,String>{'first'=>'one','second'=>'2'};
        System.debug('My MAP'+myMap);
        Names.sort();
                System.debug('List names sorted '+names);        
    }
    
}