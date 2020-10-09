BeforeExecute
-- SqlServer.2008
DECLARE @Date_1 DateTime2
SET     @Date_1 = '2009-09-20T00:00:00'

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
	Convert(Date, [_].[DateTimeValue]) = @Date_1

