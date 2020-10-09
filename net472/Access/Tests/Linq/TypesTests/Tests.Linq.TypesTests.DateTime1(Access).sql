BeforeExecute
-- Access AccessOleDb
DECLARE @Date_1 Date -- DateTime
SET     @Date_1 = #2009-09-20#

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
	DateValue([t].[DateTimeValue]) > @Date_1

