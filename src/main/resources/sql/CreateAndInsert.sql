


drop database if exists ects;
create database ects;
use ects;




##   ���ұ��ṹ
create   table COUNTRY(
               country_id     int  primary key auto_increment,
               name           varchar(64)
               );
               
               
##   ģ����ұ�����               
INSERT INTO COUNTRY( name ) VALUES ('�й�');




create   table PROVINCE(
               province_id     int  primary key auto_increment,
               name           varchar(64),
               country_id      int 
               );
               
               
               
               
##    ģ��ʡ�ݱ�����
INSERT INTO province (province_id , name , country_id ) VALUES (1, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (2, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (3, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (4, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (5, '�㶫', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (6, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (7, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (8, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (9, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (10, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (11, '�ӱ�', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (12, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (13, '���', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (14, '������', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (15, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (16, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (17, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (18, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (19, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (20, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (21, '���ɹ�', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (22, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (23, '�ຣ', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (24, '�Ĵ�', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (25, 'ɽ��', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (26, '�Ϻ�', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (27, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (28, 'ɽ��', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (29, '���', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (30, '̨��', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (31, '�½�', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (32, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (33, '����', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (34, '�㽭', 1);
INSERT INTO province (province_id , name , country_id ) VALUES (35, '����', 1);
  
  ##    �û�������Ϣ���ṹ
  create  table  USER(
                   user_id     int   primary key  auto_increment,
                   name        varchar(64) unique,
                   password      varchar(16)
                   );
                   
  ##    �û���Ϣ������Ϣ���ṹ
 create  table  CONTCATINFO(
                    contcatinfo_id   int  ,
                    street1          varchar(128),
                    street2          varchar(128),    
                    city             varchar(128), 
                    zip              varchar(12),    
                    email            varchar(128), 
                    homePhone        varchar(32),
                    cellPhone        varchar(32),
                    officePhone      varchar(32),
                    country_id   int ,
                    province_id  int  ,
                    primary key(contcatinfo_id)
                    );
 
## ������Ʒ���ͱ��ṹ
create   table   Category(
                 category_id   int  primary key auto_increment,
                 name          varchar(64),
                 descriptions  varchar(256)
                  );  
##  ģ����Ʒ����  
INSERT INTO  Category (category_id , name ,descriptions )  values  (1, '�����', '���������������');
INSERT INTO  Category (category_id , name ,descriptions )  values (2, 'Ӣ��', 'Ӣ�����ͼ��');
INSERT INTO  Category (category_id , name ,descriptions )  values (3, '��ѧ', '��ѧ��Ʒͼ�鼯');
                 
## ������Ʒ���ṹ
create   table   Product(
                 product_id    int  primary key auto_increment,
                 name          varchar(64),
                 author        varchar(64),
                 publish       varchar(128),
                 pages         int,
                 images        varchar(128),
                 basePrice     double,
                 descriptions  varchar(4000),
                 category_id    int  
                  );              
                             
##  ģ����Ʒ���� 


INSERT INTO `product` VALUES (1, 'JAVA���˼�롶���İ桷', '������Bruce Eckel', '��е��ҵ������', 796, 'images/product/zcover1.jpg', 95, '�ӱ����õĸ�����Լ�����������صĶ��������У����ѿ�������һ������֮�������������ж���Ľ�ѧ���飬��C��C++��Java���Զ��ж�������������⡣������ǳ��˽���ν���Java�������ſγ̣�Ҳ�ǳ��������Խ�ѧ�е��ѵ㼰���ǵ�����������ͨ���׶���С��ֱ�ӵ�ʾ��������һ������ɬ����ĸ������ѡȡ���Զ�������Java������˵��Ϊ��Ҫ���Ĳ��ֱ�д���顣ͬʱ��������������ṩ�˴����ο����ϡ���Ҳ�Ǳ�������ﳬ��ֵ�ĵط���\r\n�������û�а��������Դ���루���Դ�֧����վwww.MindView.net������أ��������ṩ�˴������߽��ڵ����ۿ����ݼ������ǰ2�����ݡ�\r\n�������ݷḻ����Java�Ļ����﷨����߼����ԣ��ʺϸ���ε�Java����Ա�Ķ���ͬʱҲ�Ǹߵ�ԺУ��������������������Լ�Java���Եľ��ѽ̲ġ�', 1);
INSERT INTO `product` VALUES (2, '��ͨHibernate', '������', '���ӹ�ҵ������', 600, 'images/product/zcover2.jpg', 59, '���������ٵļ�����鼮 �����ĵ�:<br>\r\n�������˵��Ľṹ�ñȷ��ݵĿ�ܣ����������ñȷ��ݵľ������Ԫ�ء������������ݵ���ʽ��Ϊ�����֡� ����ͼ�ͷ�����Ϊ�˰�ĳ��֪ʶ�������������Ҫ�ۺ�ʹ����������ʽ��Ԫ��......\r\n:<br>\r\n�����̡�Tomcat �� Java Web�����������(������)���͡���ͨStruts������MVC��Java Web����뿪��(������)��֮��Ӧ�����ߵ�ǿ��Ҫ�������ٵ���һ��������ͨHibernate��Java����־û�������⡷��������ӭ�����е�׼�����С�\r\nHibernate��һ������Java�Ŀ���Դ����ĳ־û��м��������JDBC������������װ�������ṩORMӳ����񣬻��ṩ���ݲ�ѯ�����ݻ��湦�ܣ�Java������Ա���Է����ͨ��Hibernate API���������ݿ⡣\r\n���ڣ�Խ��Խ���Java������Ա��Hibernate��Ϊ��ҵӦ�ú͹�ϵ���ݿ�֮����м�����Խ�ʡ�Ͷ���־û��йص�30%��JDBC��̹������� 2005�꣬Hibernate��Ϊ���������������ٻ��˵�15��Jolt�󽱡�Hibernate֮�����ܹ����У��鹦�������е����ơ�<br>\r\n���������ϴ������͵�ʵ������ϸ����������Ŀǰ������Hibernate2.1�汾����Java����־û��ļ�����Hibernate������Java ����ģ�ͺ͹�ϵ����ģ�͵�������ͨ�����飬���߲�����������Hibernate���߶�������ģ�ͽ���ӳ��ļ��������ܻ������뿪��Java����ģ�ͺ͹�ϵ����ģ�͵��Ƚ����顣', 1);
INSERT INTO `product` VALUES (3, 'JAVA���ļ���', '(��)Gary Cornell', '��е��ҵ������', 698, 'images/product/zcover3.jpg', 75, '    ������Ѿ���Java����Ա�����˽�Java���������ԣ�����ô����?ȥ��һ�����ߵ�Javaר�ң����ǻ�����㣺��Java���ļ�����ͨ���ṩʵսָ�����ܹ�ʹ���������Java���裬��������ս�Ե�������Ҳ������������7�������緶Χ�ڳ�Ϊ����鼮��ԭ��<br>\r\n��������ȫ�潲���˱�׼ Java 2 1��4�汾�Ļ���֪ʶ�������˴��������ʽ��������I��O��������Ҫ�����ԡ������ܹ�����������������Javaƽ̨�����ľ���������Լ�ȫ������˵� Swing�û����濪���������������ݡ�����Ҫ���ǣ���6������˸���ֵ��������ʵ�ó���(����һֱ��������Щʵ�ó��������)�����ҽ����˸��£���ӳ�������SDK���Ժͷ�չ!<br>\r\n��������ΪJavaƽ̨�������ṩ����������Ϣ��<br>\r\n������Swing GUI������������������֤��������ǿ����<br>\r\n�����񿪷��ɿ����롪��������ʽ�쳣��ջ֡�����Ժ���־<br>\r\n�������µĸ����ܵ�I��O API�����ڴ�ӳ���ļ����ļ��������ַ������룯����<br>\r\n������ʹ�����µĹ���ǿ���java��utiI��regex�����������ʽ<br>\r\n������Java 1��4ƽ̨���������ࣺ�µĿ�ƽ̨��������Ϣ�洢��<br>\r\n������̬�����ࡢ�ڲ��ࡢJavaƽ̨�¼�ģ�͡������ļ������Լ���������<br>\r\n���߼�飺<br>\r\n����CayS��Horstmann��ʥ����������ѧ�ļ������ѧ���ڣ���C++��Java��������󿪷������Ѿ���6�������� GaryCornell�ǿ����Ҹ��ѧ�Ľ��ڣ�Ҳ�ǹ�󿪷���Աϲ���ļ������ң��������������ܺ������������������˴����������ļ��������ͼ������� Apress��', 1);
INSERT INTO `product` VALUES (4, 'Effective Java���İ�(��2��)', '(��)Joshua Bloch', '��е��ҵ������', 214, 'images/product/zcover4.jpg', 39, '���������������Java�����57������ʵ�ü�ֵ�ľ��������Щ������򺭸��˴����������Աÿ�������ٵ�����Ľ��������ͨ����Javaƽ̨���ר����ʹ�õļ�����ȫ����������ʾ��Ӧ����ʲô����Ӧ����ʲô���ܲ�����������׳�͸�Ч�Ĵ��롣 �����е�ÿ�������Լ�̡�������С������ʽ���֣���ЩС���°�������ϸ����ȷ�Ľ��飬�Լ�������������ϸ΢֮���������������ͨ�����Ӵ�����Խ�һ��˵�����ᴩȫ�����ͨ�õ������÷������ģʽ���Լ�һЩ������������ļ��ɺͼ�����<br>\r\n<br>\r\n����������ϣ��10��ǰ�Ҿ���ӵ���Ȿ�顣�������˻���Ϊ�Ҳ���Ҫ�κι���Java���鼮��������ȷʵ��Ҫ�Ȿ�顣��<br> ����������������������������������������James Gosling��Java֮����Sun��˾���ܲ�<br>\r\n<br>\r\n��������һ���ǳ�������飬�����˸��ֹ���ʹ��Java����������Ժ�������������ƵĺõĽ��顣��<br>\r\n���������������������������������������� ����Gilad Bracha, Sun��˾�������ѧ�ң���The Java TM Language Specificationy����Second Edition��������֮һ ', 1);
INSERT INTO `product` VALUES (5, 'Java��ģʽ', '�ֺ�', '���ӹ�ҵ������', 1024, 'images/product/zcover5.jpg', 88, '������һ���������ԭ���Լ���Ϊ���������ģʽ��ʵ�ý̲ģ�Ŀ����Ϊ������æ��Javaϵͳ���ʦ�ṩһ�����ٶ�׼ȷ�����ԭ������ģʽ�ĸ����������Ϊ55�£�ÿһ���½ڽ���һ�����ģʽ��˵����ģʽ�����⡢�ṹ���Լ���һģʽ�ʺ���ʲô��������ȡ�ÿһ���½ڶ����ж�����Ӻ���ϰ�⣬��ϰ��Щ���ӡ������Щ��ϰ����԰������߸��õ��������������ݡ���������½ڶ�����Զ����ģ����߿��Դ򿪱��飬���κ�һ�¿�ʼ����Ϊ�����㲻ͬ�̶ȵĶ��ߵ���Ҫ�������ṩ��һЩ��Ϊ��ר�⡱���½ڣ����Ķ���Щ�½ڣ����Ķ�����ı�׼�½�û��Ӱ�졣��������֮�󣬶��߿��Ժ��������ĵ����Լ���ϵͳ��ƹ�����ʹ��ѧ�������ݣ���ͬ�½�������������ƾ��飬������ҵ��չ���и�����ջ񡣱����ʺ���Java����Ա���ܹ����ʦ�����ģʽ�����ߣ���һ��ʵ�õ����ԭ������ģʽ����ѧ�̲ĺ�ʹ���ֲ�', 1);
INSERT INTO `product` VALUES (6, '����ǳ��Hibernate', '��� ������ ����', '���ӹ�ҵ������', 512, 'images/product/zcover6.jpg', 59, '�����ɻ�������Ӱ��㷺�Ŀ����ĵ�OpenDocϵ�����������׷��ĵ���Hibernate����ָ�ϡ���չ�������ڱ�д�����У����������¹�˼����֯��ͬʱ�����ݵ�������Ƚ������ص�ǿ��������ӳ־ò����֣���������/��ϵ���ݿ�ӳ����������������۽���Ŀǰ�����ơ���ǿ����ORM��Ʒ���� Hibernate����һ�������������֣�����Hibernate�Ļ����﷨�����ã��������ߵ����桢�ӳټ��صȸ߼����ԡ�������������ǳ�����Ƚ����־ò������ORM������Hibernate������Hibernate����Hibernate�߼�����˳��չ����ֱ��Hibernateʵս���ص㽲���� Hibernate�Ļ����﷨���������á�O/Rӳ�䡢���ݹ��������ݼ�����HQLʵ�ü������Զ���־û�ʵ�֡�Hibernate�ص������ء� Hibernate��ҳ��ʵ�ü�����Hibernateʵս��������һ����ʵ��̳�Ĵ�����ʾ��Hibernate��ǿ���ܡ������зḻ�ĸ�¼�����ڸ�¼�н�����Hibernate���õ�ӳ�����ã�Hibernate���ߡ�XDocletģ�������Լ�Hibernate������iBatis�÷������Կ�Ƭ����ʽ�г��˱��������õĹ��߼���������¼���һ�����ǡ������������롱�������߶Ա���ο���Ҳ����ѧ���ṩ��һ������𲽵Ļ����������ʺ���Hibernate�ĸ����ײ�Ķ��ߡ�', 1);
INSERT INTO `product` VALUES (7, 'Tomcat��java Web', '������ ����', '���ӹ�ҵ������', 438, 'images/product/zcover7.jpg', 45, '���� ������ϸ������������Tomcat 5�汾�Ͽ���Java WebӦ�õĸ��ּ�������Ҫ���ݰ�����Tomcat��Java Web�����Ļ���֪ʶ��Java Web�����ĸ߼�������Tomcat�뵱ǰ����ͨ�������ļ��ɣ��Լ�Tomcat�ĸ��ָ߼����ܡ���������ע��������ʵ�����ϣ��о��˴������е����Ժ�ʵ�ü�ֵ��WebӦ��ʵ�������ṩ����ϸ�Ŀ����Ͳ����衣����Java Web������SUN��˾��Java Servlet�淶�������ͨ�ü�������˱��齲���Java WebӦ�����ӿ����������κ�һ��ʵ��SUN��Servlet�淶��Java Web�������ϡ����鸽����������Ϊ�������з���Դ�����Լ������漰�����������������°汾�İ�װ���򡣱�����������ǳ����ͨ���׶������۶���Java Web���������ֻ����м���˵�����鶼�Ǿ�ͨTomcat�����Ϳ���Java WebӦ�õıر���ʵ���ֲᡣ', 1);
INSERT INTO `product` VALUES (8, '���Ժڿ͹���', '������', '�廪��ѧ������', 260, 'images/product/zcover8.jpg', 55, '260ҳ����ʽ����ͼ�飬�����Ķ������У�������ذ�ť���ɹۿ���Ӧ�����Ķ�ý����ʾ�� ����48��(115��)���ͽ���ʽ��רҵ������ý���ѧ��ʾ�����ɸ�����Ƶ����ϰ�� ����ȫ��ӡˢ�������һ������?��...', 1);
INSERT INTO `product` VALUES (9, '������Ӳ��ά��', '������', '��ѧ������', 522, 'images/product/zcover9.jpg', 52, '��Ӳ��ά�޾���֮�� ȫ����ֵ���С���ר�ҽ�ѧ ����һ����Ӳ��ר�Һ���ѵʦ���ı�д���������룬ϵͳ��100%�����ѧ����ķ��ա��������¶�ȫ ֱ�������ȵ���Ӳ�������ǹ���������ϡ�����ʵ����ά...', 1);
INSERT INTO `product` VALUES (10, 'Office 2007 ���԰칫', 'ǰ���Ļ�', '��ѧ������', 555, 'images/product/zcover10.jpg', 55, '���������򵥿�ݵ�ѧ��Office 2007��ʹ���������س�ΪOffice�칫ר�ң� ѡ����ʵ�á���õ�֪ʶ��������ѧϰ�������ù���ͼ��ʽ�Ľ��⣬�����Ķ���������ֱ�ۣ�ѧϰЧ���°빦����ʵ�ð�����...', 1);
INSERT INTO `product` VALUES (11, '����ҽԺ', '���Ա�', '���Ա��������������', 871, 'images/product/zcover11.jpg', 56, '����12���ٰ棬�ۼ����۳�3,000,000�� ����Ƶ�Ǹ�����ǵ���Ӧ��DIY��ͼ�����а� ��������7�걻���л�ͼ�鱨����Ϊ����꾭�����еĺ��顱 ����һ�׵����û���ѡ��ѡ����װ�������ϡ�������Ӧ��ָ...', 1);
INSERT INTO `product` VALUES (12, 'Office 2010 ���԰칫', '������Դ', '�廪��ѧ������', 666, 'images/product/zcover12.jpg', 88, '��Office2010���԰칫(������ȫ�ʰ�)��(���߾�����Դ)��ʵ�ù��ܽ���Ϊ���ģ�ÿһ������?��Ϊѧϰ���ϻ������֡�ѧϰ���������۽���Ϊ������ϸ����ÿ��֪ʶ��ľ���Ӧ�ã�Ŀ...', 1);
INSERT INTO `product` VALUES (13, 'Android��ý�忪���߼����', '������������', '�廪��ѧ������', 555, 'images/product/zcover13.jpg', 23, '��Android��ý�忪���߼���̡���Ϊ�����ֻ���ƽ����Կ���ͼ�Ρ����֡���Ƶ�͸�ý��Ӧ�á�ʹ��������ֱ�۵�ʾ��������Android SDK�зḻ�Ķ�ý�幦�ܣ��������������ܹ����������ź͹�����ý���...', 1);
INSERT INTO `product` VALUES (14, '��ѧ����:���Դ���', '׿Խ�Ƽ�', '���ӹ�ҵ������', 666, 'images/product/zcover14.jpg', 62, '������ϸ�����˵��Դ��ֵ����֪ʶ�����������ѧ����Դ��ֵ��û��зǳ���İ�����������Ҫ���ݰ������Դ��ֵĻ���֪ʶ�����̵Ĳ�����ָ��ѵ�������뷨�����á�����ƴ�����뷨��ʹ�÷����������...', 1);
INSERT INTO `product` VALUES (15, '�������Ż����̳�', '�����ᣬ�ž�', '��ѧ������', 333, 'images/product/zcover15.jpg', 38, '�����Զ�˴�������windows 7�ȵ�����Ӳ�������·�չΪ������ȫ�桢���롢ϵͳ�ؽ����˵���װ����������ά����ά�޷����֪ʶ��������߶��ߵ�Ӳ��ѡ��������������װ���ܡ�����������ά��ά�޼��ܡ� ...', 2);
INSERT INTO `product` VALUES (16, '2�쾫ͨװ������װϵͳ��ά��', '�����ᣬ�ž�', '��ѧ������', 333, 'images/product/zcover16.jpg', 38, '�����Զ�˴�������windows 7�ȵ�����Ӳ�������·�չΪ������ȫ�桢���롢ϵͳ�ؽ����˵���װ����������ά����ά�޷����֪ʶ��������߶��ߵ�Ӳ��ѡ��������������װ���ܡ�����������ά��ά�޼��ܡ� ...', 2);
INSERT INTO `product` VALUES (17, '����ѧ���Դ���', '����������', '�����ʵ������', 888, 'images/product/zcover17.jpg', 65, '������ָ����ѧ�߿������ձʼǱ�����ʹ����ά�������������鼮��������ϸ�ؽ����˳�ѧ��Ӧ�����յıʼǱ����ԵĻ���֪ʶ�Ͳ������������Գ�ѧ����ʹ�ñʼǱ�����ʱ�������������������ר�Ҽ���ָ...', NULL);
INSERT INTO `product` VALUES (18, '��������ѧ����', '������Դ', '�廪��ѧ������', 444, 'images/product/zcover18.jpg', 65, ' ����������ѧ����(������ȫ�ʰ�)��(���߾�����Դ)��һ����������������ѧϰ���Բ���֪ʶ��ͼ�飬���ǵ����������ѵĸ���ʵ���������е��ֺš����ݶ��������ⰲ�š�������...', NULL);
INSERT INTO `product` VALUES (19, '����ά����װ��ά��', '��֪�Ļ�', '���ӹ�ҵ������', 555, 'images/product/zcover19.jpg', 65, '�������ʣ������𡣡�����ֱͨ�������֣�ѧϰ���Բ������ѣ������ʵķ�ʽ���н��⣬���ǵ����û�������������ʵ���⣬ϵͳ�ؽ���Ҫѧϰ��֪ʶ�㴮��һ�𣬼��໥���������໥������ �������׹���ʹ...', NULL);
INSERT INTO `product` VALUES (20, '�ʼǱ�����ά����ά�޴����ŵ���ͨ', '�����', '��ѧ������', 54, 'images/product/zcover20.jpg', 87, '���ʼǱ�����ά����ά�޴����ŵ���ͨ(��2��)��������Ӳ��ά����ѵʦ���ı�д��ȫ�鹲27�£�����ϵͳ���������������̵�������ʹ�ü��ɣ���������Windows XP/7����ϵͳ������...', NULL);
INSERT INTO `product` VALUES (21, '24��ѧ���������', '��������', '�����ʵ������', 654, 'images/product/zcover21.jpg', 45, ' ��������������ѵ�ѧϰ�����������ϸ����ȫ��ؽ�����ʹ�õ��Ե����֪ʶ�ͷ�������Ҫ���ݰ�����ʶ���˽���ԡ����̺�����ʹ�á�Windows 7�������������Դ��֡������ļ����ļ��С�����ϵͳ����...', NULL);
INSERT INTO `product` VALUES (22, '����װ��ά����ά��', '��������', '�й���֯������', 645, 'images/product/zcover22.jpg', 45, ' ������Ҫ���ݰ�����֯����֪ʶ�����Ժ����ʹ�á��ṹ���������ԡ���װ����ԡ��ճ������ͳ������Ϸ����ȡ�ʹѧԱ�ھ߱�������֪֯ʶ���������ܵĸ��Բ��������ϣ��Ե��Ժ�����ڲ����켰������н�...', NULL);
INSERT INTO `product` VALUES (23, '��ת�ҵ�ƻ������', '��ɼ', '��е��ҵ������', 345, 'images/product/zcover23.jpg', 64, '����ת�ҵ�ƻ������(mac os x 10.7��)����ѭ�򽥽��ķ�ʽ��ȫ��ϵͳ�ؽ�����mac os x v10.7����lion�Ļ���ʹ�á��������ú͸߼����������ݡ� ��������ת�ҵ�ƻ������(mac os x 10.7��)������Ϊ9��...', NULL);
INSERT INTO `product` VALUES (24, '���Գ��ù�������', '���Ժ챦���ί��', '�Ϻ���ѧ�ռ�������', 45654, 'images/product/zcover24.jpg', 64, '����ȫ����ϸ�ؽ�����Ŀǰ�Ƚ����е�����ʹ�÷�������Ҫ���ݰ������칫������ͼ��������ѹ����������ý���������������������������ȣ��������ݷḻ��ͼ�Ĳ�ï�����ܹ�������ǳ����ͨ���׶��� ����...', NULL);
INSERT INTO `product` VALUES (25, '���԰칫�Զ���ʵ�ý̳�', '����������࣬�ܵ���', '�廪��ѧ������', 465, 'images/product/zcover25.jpg', 78, '������ɫ���Ծ�ҵΪ����������ʵ������?ΪĿ�ꣻע��ʵ����ʵ��������ʵ�����л���ϣ��ṩȫ��ļ���֧�ֺ����廯�Ľ�ѧ��Դ��', NULL);
INSERT INTO `product` VALUES (26, '�������װ��ά��������ų������̳�', '�Ľ���Ժ', '�廪��ѧ������', 658, 'images/product/zcover26.jpg', 89, '�����ǡ��������Խ̡̳�ϵ�д����һ���ֲᣬ����ͨ���׶������ԡ�����ϸѡ��ʵ�ü��ɡ���ʵ�����Ĳ���������ȫ������˼������װ��ά��������ų��Ļ���֪ʶ����Ҫ���ݰ�����ʶ���ԡ�ѡ������...', NULL);
INSERT INTO `product` VALUES (27, '������ѧ', '���ϿƼ�', '��е��ҵ������', 654, 'images/product/zcover27.jpg', 93, '����������������˵��������͵Ĳ������󣬶�Ů�ֶ಻�����ߣ���̨���Էḻһ�����������ǲ�����ѡ�����ڵ��������Ե��ռ�����������ѧϰ�����Ѳ���ʲô���£���������...', NULL);
INSERT INTO `product` VALUES (28, '��ͼ����ѧ�޵�������', '���ŵ��Թ����ҡ�', '�����ʵ������', 897, 'images/product/zcover28.jpg', 34, '�����Ϊ��ƪ����ͼ��������ƪ���ص�����˵���ά�޵�����֪ʶ���õ�����Ҫά�޹��ߣ���ͼ��������ƪ�����ô�����ʵ��ͼƬ��ͼ�Ķ���˵������ϸ�ؽ����˵���ά�޵Ļ������ܣ���ͼ��������ƪ��ͨ��...', NULL);
INSERT INTO `product` VALUES (29, '������Ӳ��ά�޴����ŵ���ͨ', '������', '��ѧ������', 645, 'images/product/zcover29.jpg', 64, '����Ӳ��ά�޾���֮�� ȫ����ֵ���С���ר�ҽ�ѧ ����һ����Ӳ��ר�Һ���ѵʦ���ı�д���������룬ϵͳ��100%�����ѧ����ķ��ա��������¶�ȫ ֱ�������ȵ���Ӳ�������ǹ���������ϡ�����ʵ����ά...', NULL);
INSERT INTO `product` VALUES (30, 'Office 2007 ���԰칫', 'ǰ���Ļ�', '��ѧ������', 645, 'images/product/zcover30.jpg', 36, '���������򵥿�ݵ�ѧ��Office 2007��ʹ���������س�ΪOffice�칫ר�ң� ѡ����ʵ�á���õ�֪ʶ��������ѧϰ�������ù���ͼ��ʽ�Ľ��⣬�����Ķ���������ֱ�ۣ�ѧϰЧ���°빦����ʵ�ð�����...', NULL);


##����Ϊ�����촴�����ṹ
##  �������ʽ���ṹ

 create   table  PAYWAY(
                   payway_id  int  primary key auto_increment,
                   payStyle   varchar(36)
                   );
## ģ�⸶�ʽ����
insert  into   PAYWAY(payway_id , payStyle) values(1, "�ֽ𸶿�");
insert  into   PAYWAY(payway_id , payStyle) values(2, "��������");
insert  into   PAYWAY(payway_id , payStyle) values(3, "��㸶��");

## ��������״̬���ṹ
  create   table  OrderStatus(
            orderStatus_id   int  primary key auto_increment,
            name    varchar(36),
            descriptions  varchar(128)
            );
##  ģ�ƶ���״̬����
insert into  OrderStatus(orderStatus_id,name, descriptions) values
(1,'���״̬','�����������״̬�����ڽ�����');
insert into  OrderStatus(orderStatus_id,name, descriptions) values
(2,'�ɹ�״̬','�����Ѿ��ɹ����ͻ���');
insert into  OrderStatus(orderStatus_id,name, descriptions) values
(3,'����;��','���������ͻ�״̬');
insert into  OrderStatus(orderStatus_id,name, descriptions) values
(4,'ȱ��״̬','�����漰��Ʒ��ʱȱ��');             

## �����������ṹ
 create  table  myOrder(
                order_id  int  primary key auto_increment,
                name      varchar(32),
                cost      double,
                user_id   int ,
                payWay_id int  ,
                orderStatus_id  int  
                );     

## ����������ϸ��
 create   table OrderLine(
                orderLine_id  int primary key auto_increment,
                amount        int ,
                product_id    int  ,
                order_id      int  
                );                                                                                    