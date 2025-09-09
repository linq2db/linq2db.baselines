BeforeExecute
-- SqlServer.2017

SELECT
	DateDiff_Big(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

