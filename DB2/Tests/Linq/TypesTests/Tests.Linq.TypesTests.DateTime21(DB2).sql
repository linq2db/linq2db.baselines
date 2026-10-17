-- DB2 DB2.LUW DB2LUW
SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."DateTimeValue2",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."SmallIntValue",
	"t"."IntValue",
	"t"."BigIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @dt Timestamp(20) -- DateTime
SET     @dt = CAST('2010-12-14-05.00.07.425014' AS TIMESTAMP(6))

UPDATE
	"LinqDataTypes" "t"
SET
	"DateTimeValue" = CAST(@dt AS timestamp)
WHERE
	"t".ID = 1

-- DB2 DB2.LUW DB2LUW
SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."DateTimeValue2",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."SmallIntValue",
	"t"."IntValue",
	"t"."BigIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @pdt Timestamp(20) -- DateTime
SET     @pdt = CAST('2001-01-11-01.11.21.100000' AS TIMESTAMP(6))

UPDATE
	"LinqDataTypes" "t"
SET
	"DateTimeValue" = CAST(@pdt AS timestamp)
WHERE
	"t".ID = 1

