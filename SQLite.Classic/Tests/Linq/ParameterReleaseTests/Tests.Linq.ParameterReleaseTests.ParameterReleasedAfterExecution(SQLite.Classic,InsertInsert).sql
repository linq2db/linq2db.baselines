-- SQLite.Classic SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 256
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue VarChar(23) -- AnsiString
SET     @DateTimeValue = '2020-02-29 17:54:55.123'
DECLARE @BoolValue Integer -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue Blob -- Guid
SET     @GuidValue = X'00000000000000000000000000000000'
DECLARE @BinaryValue Binary(3)
SET     @BinaryValue = X'010203'
DECLARE @SmallIntValue Integer -- Int16
SET     @SmallIntValue = 0
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[BoolValue],
	[GuidValue],
	[BinaryValue],
	[SmallIntValue],
	[StringValue]
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

-- SQLite.Classic SQLite
DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = 256

-- SQLite.Classic SQLite
DECLARE @value Binary(3)
SET     @value = X'010203'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BinaryValue]
)
VALUES
(
	256,
	@value
)

-- SQLite.Classic SQLite
SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 256

-- SQLite.Classic SQLite
DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = 256

