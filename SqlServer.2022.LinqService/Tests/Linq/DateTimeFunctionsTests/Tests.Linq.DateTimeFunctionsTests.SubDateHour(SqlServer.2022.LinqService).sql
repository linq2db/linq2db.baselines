BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DateDiff_Big(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

