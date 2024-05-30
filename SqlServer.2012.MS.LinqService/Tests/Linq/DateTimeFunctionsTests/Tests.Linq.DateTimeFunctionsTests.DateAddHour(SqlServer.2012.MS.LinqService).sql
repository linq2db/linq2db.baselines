BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

