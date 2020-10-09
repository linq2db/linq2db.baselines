BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2 
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
	[t].[MoneyValue] * Convert(Decimal(29,10), [t].[ID]) = 1.11

