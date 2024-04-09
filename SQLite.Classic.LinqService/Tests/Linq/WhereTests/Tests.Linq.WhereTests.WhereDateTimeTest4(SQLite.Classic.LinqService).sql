BeforeExecute
-- SQLite.Classic SQLite
DECLARE @DateTimeValue VarChar(23) -- AnsiString
SET     @DateTimeValue = '2009-09-27 00:00:00.000'

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[DateTimeValue2],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[SmallIntValue],
	[_].[IntValue],
	[_].[BigIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [_].[DateTimeValue]) = strftime('%Y-%m-%d %H:%M:%f', @DateTimeValue)

