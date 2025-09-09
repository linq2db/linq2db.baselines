BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DateDiff_Big(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

