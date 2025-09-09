BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateDiff_Big(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

