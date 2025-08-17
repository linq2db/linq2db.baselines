BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DateAdd(hour, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

