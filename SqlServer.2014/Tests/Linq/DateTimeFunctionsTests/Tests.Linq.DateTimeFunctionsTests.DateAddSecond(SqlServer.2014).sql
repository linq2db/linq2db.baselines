BeforeExecute
-- SqlServer.2014

SELECT
	DatePart(second, DateAdd(second, 41, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

