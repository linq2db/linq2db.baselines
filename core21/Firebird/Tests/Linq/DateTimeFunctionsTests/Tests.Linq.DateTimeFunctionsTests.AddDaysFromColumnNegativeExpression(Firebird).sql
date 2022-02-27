BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2018-01-03' AS timestamp)
DECLARE @BoolValue Char(1) -- String
SET     @BoolValue = '0'
DECLARE @GuidValue Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = -2
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
-- Firebird
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4
DECLARE @p_1 TimeStamp -- DateTime
SET     @p_1 = CAST('2018-01-02' AS timestamp)

SELECT
	Count(*)
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 5000 AND DateAdd(Day, ("t"."SmallIntValue" + @part1) - @part2, "t"."DateTimeValue") < @p_1

BeforeExecute
-- Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = 5000

