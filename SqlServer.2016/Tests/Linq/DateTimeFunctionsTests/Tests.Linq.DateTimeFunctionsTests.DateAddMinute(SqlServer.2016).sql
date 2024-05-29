BeforeExecute
-- SqlServer.2016

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

