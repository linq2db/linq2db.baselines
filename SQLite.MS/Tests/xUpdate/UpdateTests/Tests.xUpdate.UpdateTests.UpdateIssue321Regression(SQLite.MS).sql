-- SQLite.MS SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue Text -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 Text -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Integer -- Boolean
SET     @BoolValue = NULL
DECLARE @GuidValue Blob -- Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue Integer -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 60
DECLARE @BigIntValue Integer -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[DateTimeValue2],
	[BoolValue],
	[GuidValue],
	[SmallIntValue],
	[IntValue],
	[BigIntValue],
	[StringValue]
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- SQLite.MS SQLite
DECLARE @value2 Decimal(5, 0)
SET     @value2 = 13621
DECLARE @id Integer -- Int32
SET     @id = 100500

UPDATE
	[LinqDataTypes]
SET
	[SmallIntValue] = CAST([LinqDataTypes].[MoneyValue] / (@value2 / [LinqDataTypes].[IntValue]) AS SmallInt)
WHERE
	[LinqDataTypes].[ID] = @id

-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 100500

SELECT
	[t1].[SmallIntValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @id
LIMIT 1

