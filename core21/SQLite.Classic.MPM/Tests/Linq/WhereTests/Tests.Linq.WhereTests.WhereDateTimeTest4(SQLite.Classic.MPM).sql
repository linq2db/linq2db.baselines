BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @DateTimeValue_1  -- DateTime
SET     @DateTimeValue_1 = '2009-09-27'

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
	DateTime([_].[DateTimeValue]) = DateTime(@DateTimeValue_1)

