-- SQLite.MS SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue Text(23) -- DateTime
SET     @DateTimeValue = '2018-01-03 00:00:00.000'
DECLARE @BoolValue Integer -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue Blob(16) -- Guid
SET     @GuidValue = X'00000000000000000000000000000000'
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue Integer -- Int16
SET     @SmallIntValue = 2
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

-- SQLite.MS SQLite
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 5000 AND strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(([t].[SmallIntValue] + @part1) - @part2 AS NVarChar(11)) || ' Day')) > strftime('%Y-%m-%d %H:%M:%f', '2018-01-02 00:00:00.000')

-- SQLite.MS SQLite
DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = 5000

