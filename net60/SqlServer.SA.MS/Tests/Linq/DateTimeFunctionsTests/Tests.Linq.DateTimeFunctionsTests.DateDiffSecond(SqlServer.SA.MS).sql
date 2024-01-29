BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DateDiff_Big(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

