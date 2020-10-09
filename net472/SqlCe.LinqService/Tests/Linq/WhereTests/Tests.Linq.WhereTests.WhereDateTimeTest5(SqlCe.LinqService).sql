BeforeExecute
-- SqlCe
DECLARE @Date_1 DateTime
SET     @Date_1 = '2009-09-20'

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
	Cast(Floor(Cast([_].[DateTimeValue] as Float)) as DateTime) = @Date_1

