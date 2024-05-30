BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

