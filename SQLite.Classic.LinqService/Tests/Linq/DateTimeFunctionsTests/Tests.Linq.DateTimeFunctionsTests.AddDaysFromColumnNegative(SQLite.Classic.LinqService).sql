BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue VarChar(23) -- AnsiString
SET     @DateTimeValue = '2018-01-03 00:00:00.000'
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue  -- Guid
SET     @GuidValue = X'00000000000000000000000000000000'
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = -2
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

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 5000 AND strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST([t].[SmallIntValue] AS NVarChar(6)) || ' Day')) < strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', '2018-01-02 00:00:00.000'))

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = 5000

