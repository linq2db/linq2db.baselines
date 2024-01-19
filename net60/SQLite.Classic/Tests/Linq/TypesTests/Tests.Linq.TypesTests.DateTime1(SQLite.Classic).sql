BeforeExecute
-- SQLite.Classic SQLite
DECLARE @dt  -- DateTime
SET     @dt = '2009-09-20 09:19:29.09'

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DateTime(Date([t].[DateTimeValue])) > DateTime(Date(@dt))

