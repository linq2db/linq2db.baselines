BeforeExecute
-- SqlServer.2012

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

