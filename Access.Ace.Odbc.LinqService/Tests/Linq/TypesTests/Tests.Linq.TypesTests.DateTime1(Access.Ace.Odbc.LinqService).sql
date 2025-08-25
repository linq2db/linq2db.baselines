BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Date DateTime
SET     @Date = #2009-09-20#

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
	IIF([t].[DateTimeValue] IS NOT NULL, DateValue([t].[DateTimeValue]), NULL) > ?

