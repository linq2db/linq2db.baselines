BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DateAdd(minute, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

