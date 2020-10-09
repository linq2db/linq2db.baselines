BeforeExecute
-- SqlServer.2012
DECLARE @DateTimeValue_1 DateTime2
SET     @DateTimeValue_1 = '2009-09-27T00:00:00'

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
	[_].[DateTimeValue] = @DateTimeValue_1

