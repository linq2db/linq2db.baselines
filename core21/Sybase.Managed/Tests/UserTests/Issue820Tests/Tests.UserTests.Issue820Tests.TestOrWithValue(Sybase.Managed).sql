BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	Count(*)
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value_1 SmallInt -- Int16
SET     @Value_1 = 1

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
	@Value_1 = [_].[SmallIntValue]

BeforeExecute
-- Sybase.Managed Sybase

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

