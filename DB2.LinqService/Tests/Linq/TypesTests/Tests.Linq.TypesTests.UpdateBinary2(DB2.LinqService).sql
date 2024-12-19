BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = BX'0102030405'
DECLARE @p Integer(4) -- Int32
SET     @p = 1

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = @BinaryValue
WHERE
	"t".ID = @p

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = BX'0504030201'
DECLARE @p Integer(4) -- Int32
SET     @p = 2

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = @BinaryValue
WHERE
	"t".ID = @p

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID IN (1, 2)

