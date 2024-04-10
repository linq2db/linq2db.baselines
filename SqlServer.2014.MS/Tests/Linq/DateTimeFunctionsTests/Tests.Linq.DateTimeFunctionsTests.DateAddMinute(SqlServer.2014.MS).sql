BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

