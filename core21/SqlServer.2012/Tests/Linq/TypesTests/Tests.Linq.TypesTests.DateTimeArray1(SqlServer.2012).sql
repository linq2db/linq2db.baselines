BeforeExecute
-- SqlServer.2012
DECLARE @p1 DateTime2
SET     @p1 = '2001-01-11T01:11:21.1000000'

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
	[t].[DateTimeValue] IN (@p1)

