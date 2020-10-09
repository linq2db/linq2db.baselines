BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[ID], 
	[t1].[MoneyValue], 
	[t1].[DateTimeValue], 
	[t1].[BoolValue], 
	[t1].[GuidValue], 
	[t1].[BinaryValue], 
	[t1].[SmallIntValue], 
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	DateAdd(day, 5, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

