BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	DateAdd(minute, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

