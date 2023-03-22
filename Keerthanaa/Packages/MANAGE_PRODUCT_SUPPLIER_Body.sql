create or replace PACKAGE BODY MANAGE_PRODUCT_SUPPLIER AS

PROCEDURE ADD_NEW_PRODUCT(PRODUCT_NAME VARCHAR, CATEGORY_ID INT, PRICE INT, QTY INT, DISCOUNT_ID FLOAT) IS
M_PRODUCT_NAME VARCHAR(255);
M_CATEGORY_ID INT;
M_PRICE INT;
M_QTY INT;
M_PRODUCT_ID INT;
M_DISCOUNT_ID INT;
BEGIN
    M_PRODUCT_NAME:=PRODUCT_NAME;
    M_CATEGORY_ID:=CATEGORY_ID;
    M_PRICE:=PRICE;
    M_QTY:=QTY;
    M_DISCOUNT_ID:=DISCOUNT_ID;
    
    SELECT COUNT(*)+1 INTO M_PRODUCT_ID FROM PRODUCT;
    INSERT INTO PRODUCT(PRODUCT_ID,PRODUCT_NAME,CATEGORY_ID,PRICE,QUANTITY) VALUES (M_PRODUCT_ID,M_PRODUCT_NAME,M_CATEGORY_ID,M_PRICE,M_QTY);
    
END;

PROCEDURE UPDATE_PRODUCT_NAME(PRODUCT_NAME VARCHAR, NEW_PRODUCT_NAME VARCHAR) IS
M_PRODUCT_NAME VARCHAR(255);
M_NEW_PRODUCT_NAME VARCHAR(255);
BEGIN
    M_PRODUCT_NAME:=PRODUCT_NAME;
    M_NEW_PRODUCT_NAME:= NEW_PRODUCT_NAME;
    UPDATE PRODUCT SET PRODUCT_NAME=M_NEW_PRODUCT_NAME WHERE PRODUCT_NAME=M_PRODUCT_NAME;
END;

PROCEDURE UPDATE_PRODUCT_QTY(PRODUCT_NAME VARCHAR, NEW_PRODUCT_QTY INT) IS
M_PRODUCT_NAME VARCHAR(255);
M_NEW_PRODUCT_QTY INT;
BEGIN
    M_PRODUCT_NAME:=PRODUCT_NAME;
    M_NEW_PRODUCT_QTY:=NEW_PRODUCT_QTY;
    UPDATE PRODUCT SET QUANTITY=M_NEW_PRODUCT_QTY WHERE PRODUCT_NAME=M_PRODUCT_NAME;
END;

PROCEDURE UPDATE_PRODUCT_PRICE(PRODUCT_NAME VARCHAR, NEW_PRODUCT_PRICE INT) IS
M_PRODUCT_NAME VARCHAR(255);
M_NEW_PRODUCT_PRICE INT;
BEGIN
    M_PRODUCT_NAME:=PRODUCT_NAME;
    M_NEW_PRODUCT_PRICE:=NEW_PRODUCT_PRICE;
    UPDATE PRODUCT SET PRICE=M_NEW_PRODUCT_PRICE WHERE PRODUCT_NAME=M_PRODUCT_NAME;
END;

END;