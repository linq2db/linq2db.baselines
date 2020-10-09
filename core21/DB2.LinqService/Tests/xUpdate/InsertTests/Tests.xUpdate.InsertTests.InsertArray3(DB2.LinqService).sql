BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @arr VarBinary(4) -- Binary
SET     @arr = BX'01020304'

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	@arr
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t".ID, 
	"t"."MoneyValue", 
	"t"."DateTimeValue", 
	"t"."BoolValue", 
	"t"."GuidValue", 
	"t"."BinaryValue", 
	"t"."SmallIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000

