USE orders;

INSERT INTO customers
(customer_id,
gender,
marital_status,
home_owner,
children,
annual_income
)
 VALUES
 (001,"M","Single","Yes",1,50000),
 (002,"M","Married","No",0,60000),
 (003,"M","Single","Yes",1,50000),
 (004,"M","Married","No",2,45000),
 (005,"M","Single","Yes",1,50000),
 (006,"M","Married","No",2,45000),
 (007,"M","Married","No",3,47000),
 (008,"F","Single","Yes",1,50000),
 (009,"M","Single","NO",1,70000),
 (010,"F","Single","Yes",5,98000);
 
 
 
INSERT INTO locations VALUES
(1,"warri","lagos","nigeria"),
(2,"calabar","ogun","nigeria"),
(3,"lagos","oyo","nigeria"),
(4,"kaduna","lagos","nigeria"),
(5,"kano","ondo","nigeria"),
(6,"benin","ekiti","nigeria"),
(7,"enugu","osun","nigeria"),
(8,"calabar","lagos","nigeria"),
(9,"port harcourt","ibadan","nigeria"),
(10,"jos","Ogun","nigeria");
 
 
 INSERT INTO orderitem VALUES
 (50,5),
 (20,5),
 (10,9),
 (10,5),
 (70,9),
 (50,5),
 (10,5),
 (50,1),
 (20,5),
 (50,10);
 
 
 INSERT INTO orders VALUES
 (1,1,"2000-01-01"),
 (2,2,"2000-01-01"),
 (3,3,"2002-01-01"),
 (4,4,"2003-01-01"),
 (5,5,"2000-01-01"),
 (6,6,"2004-01-01"),
 (7,7,"2005-01-01"),
 (8,8,"2060-01-01"),
 (9,9,"2002-01-01"),
 (10,11,"2009-01-01");
 
 
 INSERT INTO products VALUES
 (1,"clothing","men's apparel","shirts",50,"2023-09-04"),
 (2,"beauty","skincare","moisturizers",20,"2023-09-04"),
 (3,"home","furniture","sofa",1000,"2023-09-04"),
 (4,"electronics","audio","headphones",2000,"2023-09-04"),
 (5,"sports","fitness","yoga mats",30,"2023-09-04"),
 (6,"books","fiction","mystery",15,"2023-09-04"),
 (7,"toys","outdoors","bicycles",250,"2023-09-04"),
 (8,"home","kitchen","cookware",800,"2023-09-04"),
 (9,"electronics","mobile","smartphones",800,"2023-09-04"),
 (10,"beauty","makeup","lipsticks",100,"2023-09-04")
 

 
 
 
 
 