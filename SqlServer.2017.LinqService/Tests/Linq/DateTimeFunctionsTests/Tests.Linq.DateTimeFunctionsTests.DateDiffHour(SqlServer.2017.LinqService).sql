BeforeExecute
-- SqlServer.2017

SELECT
	DateDiff_Big(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

