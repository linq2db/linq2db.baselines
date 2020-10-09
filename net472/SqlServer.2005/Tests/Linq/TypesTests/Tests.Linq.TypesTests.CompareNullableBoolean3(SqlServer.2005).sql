BeforeExecute
-- SqlServer.2005
DECLARE @param2_1 Bit -- Boolean
SET     @param2_1 = 0

SELECT 
	[t].[ID], 
	[t].[MoneyValue], 
	[t].[DateTimeValue], 
	[t].[BoolValue], 
	[t].[GuidValue], 
	[t].[BinaryValue], 
	[t].[SmallIntValue], 
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[BoolValue] = @param2_1

