BeforeExecute
-- SqlServer.2016

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

