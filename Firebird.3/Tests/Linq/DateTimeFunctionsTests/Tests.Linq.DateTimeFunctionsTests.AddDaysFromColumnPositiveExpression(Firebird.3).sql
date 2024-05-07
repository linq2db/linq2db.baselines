﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2018-01-03' AS timestamp)
DECLARE @BoolValue Boolean
SET     @BoolValue = FALSE
DECLARE @GuidValue Guid
SET     @GuidValue = X'00000000000000000000000000000000'
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@StringValue
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 5000 AND DateAdd(Day, ("t"."SmallIntValue" + CAST(@part1 AS SmallInt)) - CAST(@part2 AS Int), "t"."DateTimeValue") > CAST('2018-01-02' AS TimeStamp)

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 5000

