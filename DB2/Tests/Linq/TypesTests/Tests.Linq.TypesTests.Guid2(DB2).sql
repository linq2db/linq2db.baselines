BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'DB2F934043154A4EAC2CCA371604FB4B'

SELECT
	"p".ID,
	"p"."MoneyValue",
	"p"."DateTimeValue",
	"p"."BoolValue",
	"p"."GuidValue",
	"p"."BinaryValue",
	"p"."SmallIntValue",
	"p"."StringValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = @GuidValue
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'C070F9D2AC3587499CD55BADB1757436'

SELECT
	"p".ID,
	"p"."MoneyValue",
	"p"."DateTimeValue",
	"p"."BoolValue",
	"p"."GuidValue",
	"p"."BinaryValue",
	"p"."SmallIntValue",
	"p"."StringValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = @GuidValue
FETCH NEXT 2 ROWS ONLY

