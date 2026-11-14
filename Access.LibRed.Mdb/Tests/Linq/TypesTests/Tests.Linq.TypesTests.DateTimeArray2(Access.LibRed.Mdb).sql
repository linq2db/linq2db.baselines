-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2001-01-11 01:11:21#
DECLARE @value_1  -- DateTime
SET     @value_1 = #2012-11-07 19:19:29#

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
	[t].[DateTimeValue] IN (@value, @value_1)

