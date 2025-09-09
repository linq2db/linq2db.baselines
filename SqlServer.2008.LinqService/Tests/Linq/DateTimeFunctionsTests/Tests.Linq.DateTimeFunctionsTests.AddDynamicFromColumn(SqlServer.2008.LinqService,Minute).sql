BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DateAdd(minute, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

