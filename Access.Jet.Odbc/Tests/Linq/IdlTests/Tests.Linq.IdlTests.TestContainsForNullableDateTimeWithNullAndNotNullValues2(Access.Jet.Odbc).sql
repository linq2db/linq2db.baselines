-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC
DECLARE @value DateTime
SET     @value = #2009-09-24 09:19:29#

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [x]
WHERE
	([x].[DateTimeValue2] IN (?) OR [x].[DateTimeValue2] IS NULL)

