-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

