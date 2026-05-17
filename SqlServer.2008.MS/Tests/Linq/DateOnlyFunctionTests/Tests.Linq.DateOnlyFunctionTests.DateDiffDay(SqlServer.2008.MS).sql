-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

