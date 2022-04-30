BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]
DECLARE @:p2 Decimal
SET     @:p2 = System.Object[]
DECLARE @:p3 TimeStamp -- DateTime
SET     @:p3 = System.Object[]
DECLARE @:p4 Int16
SET     @:p4 = System.Object[]
DECLARE @:p5 Blob -- Object
SET     @:p5 = System.Object[]
DECLARE @:p6 Int16
SET     @:p6 = System.Object[]
DECLARE @:p7 Varchar2 -- String
SET     @:p7 = System.Object[]

INSERT INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (:p1, :p2, :p3, :p4, :p5, :p6, :p7)

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID >= 4000

