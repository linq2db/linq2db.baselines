BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
	([_].[ID] NOT IN (1) AND [_].[ID] NOT IN (2))

