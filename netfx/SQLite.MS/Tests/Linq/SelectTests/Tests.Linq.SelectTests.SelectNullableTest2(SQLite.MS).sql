BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue  -- Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[BinaryValue],
	[_].[SmallIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] = 1000
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = 1000

