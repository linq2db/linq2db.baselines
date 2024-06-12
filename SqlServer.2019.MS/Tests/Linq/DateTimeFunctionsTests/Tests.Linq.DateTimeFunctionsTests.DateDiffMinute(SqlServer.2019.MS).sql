BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	DateDiff_Big(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

