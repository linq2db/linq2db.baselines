﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5000
DECLARE @MoneyValue (1, 0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp(20) -- DateTime
SET     @DateTimeValue = '2018-01-03-00.00.00.000000'
DECLARE @BoolValue SmallInt(4) -- Int16
SET     @BoolValue = 0
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'00000000000000000000000000000000'
DECLARE @BinaryValue VarBinary -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 2
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue",
	"StringValue"
)
VALUES
(
	CAST(@ID AS Int),
	CAST(@MoneyValue AS Decimal),
	CAST(@DateTimeValue AS timestamp),
	CAST(@BoolValue AS smallint),
	CAST(@GuidValue AS char(16) for bit data),
	CAST(@BinaryValue AS VARBINARY(32672)),
	CAST(@SmallIntValue AS SmallInt),
	CAST(@StringValue AS NVarChar(255))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @part1 SmallInt(2) -- Int16
SET     @part1 = 4
DECLARE @part2 Integer(4) -- Int32
SET     @part2 = 4

SELECT
	Count(*)
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 5000 AND "t"."DateTimeValue" + (("t"."SmallIntValue" + CAST(@part1 AS SmallInt)) - CAST(@part2 AS Int)) DAY > CAST('2018-01-02' AS timestamp)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 5000

