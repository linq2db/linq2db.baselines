BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DateAdd(month, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

