BeforeExecute
-- SQLite.MS SQLite
DECLARE @Date  -- DateTime
SET     @Date = '2009-09-20'

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
	DateTime(Date([_].[DateTimeValue])) = DateTime(@Date)

