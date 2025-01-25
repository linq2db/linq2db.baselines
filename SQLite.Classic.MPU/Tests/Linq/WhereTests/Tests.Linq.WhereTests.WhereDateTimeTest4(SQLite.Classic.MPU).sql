BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeValue VarChar(23) -- AnsiString
SET     @DateTimeValue = '2009-09-27 00:00:00.000'

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t1].[DateTimeValue]) = strftime('%Y-%m-%d %H:%M:%f', @DateTimeValue)

