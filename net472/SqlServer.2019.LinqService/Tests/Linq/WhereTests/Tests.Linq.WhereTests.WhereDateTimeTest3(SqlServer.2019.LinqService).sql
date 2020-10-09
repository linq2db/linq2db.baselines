BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @DateTimeValue_1 DateTime2
SET     @DateTimeValue_1 = '2009-09-27T00:00:00'

SELECT 
	[_].[ID], 
	[_].[MoneyValue], 
	[_].[DateTimeValue], 
	[_].[BoolValue], 
	[_].[GuidValue], 
	[_].[BinaryValue], 
	[_].[SmallIntValue], 
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[DateTimeValue] = @DateTimeValue_1

