BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

