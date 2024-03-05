BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

