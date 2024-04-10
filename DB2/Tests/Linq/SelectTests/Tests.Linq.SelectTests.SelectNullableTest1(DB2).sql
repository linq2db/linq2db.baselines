BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1000
DECLARE @MoneyValue (1, 0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue SmallInt(4) -- Int16
SET     @BoolValue = 0
DECLARE @GuidValue VarBinary -- Binary
SET     @GuidValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"GuidValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)
VALUES
(
	CAST(@ID AS Int),
	CAST(@MoneyValue AS Decimal),
	CAST(@DateTimeValue AS timestamp),
	CAST(@DateTimeValue2 AS timestamp),
	CAST(@BoolValue AS smallint),
	CAST(@GuidValue AS char(16) for bit data),
	CAST(@SmallIntValue AS SmallInt),
	CAST(@IntValue AS Int),
	CAST(@BigIntValue AS BigInt),
	CAST(@StringValue AS NVarChar(255))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_".ID,
	"_"."MoneyValue",
	"_"."DateTimeValue",
	"_"."DateTimeValue2",
	"_"."BoolValue",
	"_"."GuidValue",
	"_"."SmallIntValue",
	"_"."IntValue",
	"_"."BigIntValue",
	"_"."StringValue"
FROM
	"LinqDataTypes" "_"
WHERE
	"_".ID = 1000
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "_"
WHERE
	"_".ID = 1000

