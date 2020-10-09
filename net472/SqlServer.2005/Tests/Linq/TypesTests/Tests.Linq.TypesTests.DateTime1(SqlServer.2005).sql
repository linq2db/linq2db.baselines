BeforeExecute
-- SqlServer.2005
DECLARE @Date_1 DateTime
SET     @Date_1 = '2009-09-20T00:00:00'

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
	Cast(Floor(Cast([t].[DateTimeValue] as Float)) as DateTime) > @Date_1

