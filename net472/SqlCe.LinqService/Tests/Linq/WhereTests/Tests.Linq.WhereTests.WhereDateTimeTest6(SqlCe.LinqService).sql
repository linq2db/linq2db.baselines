BeforeExecute
-- SqlCe
DECLARE @Date_1 DateTime
SET     @Date_1 = '2009-09-20'

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
	Cast(Floor(Cast([_].[DateTimeValue] as Float)) as DateTime) = @Date_1

