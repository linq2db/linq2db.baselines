BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {1003,1004,1005,1006}
DECLARE @:p2 Decimal
SET     @:p2 = {0,0,1,2}
DECLARE @:p3 TimeStamp -- DateTime
SET     @:p3 = {TIMESTAMP '2020-02-29 17:54:55.123123',NULL,TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '2020-02-29 17:54:55.123123'}
DECLARE @:p4 TimeStamp -- DateTime
SET     @:p4 = {NULL,NULL,NULL,NULL}
DECLARE @:p5 Int16
SET     @:p5 = {1,0,0,0}
DECLARE @:p6 Int16
SET     @:p6 = {NULL,2,5,6}
DECLARE @:p7 Int32
SET     @:p7 = {NULL,1532334,NULL,153}
DECLARE @:p8 Int64
SET     @:p8 = {NULL,NULL,NULL,NULL}
DECLARE @:p9 Varchar2 -- String
SET     @:p9 = {NULL,NULL,NULL,NULL}

INSERT INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (:p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

