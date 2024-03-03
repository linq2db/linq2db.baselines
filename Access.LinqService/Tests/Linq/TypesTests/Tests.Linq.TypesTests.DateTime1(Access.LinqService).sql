BeforeExecute
-- Access AccessOleDb
DECLARE @dt Date -- DateTime
SET     @dt = #2009-09-20 09:19:29#

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
	DateValue([t].[DateTimeValue]) > DateValue(@dt)

