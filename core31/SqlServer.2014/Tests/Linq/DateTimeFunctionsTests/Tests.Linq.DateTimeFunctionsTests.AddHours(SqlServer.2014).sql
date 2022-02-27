BeforeExecute
-- SqlServer.2014

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

