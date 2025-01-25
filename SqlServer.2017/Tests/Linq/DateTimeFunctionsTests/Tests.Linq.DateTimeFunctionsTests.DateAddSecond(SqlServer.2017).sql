BeforeExecute
-- SqlServer.2017

SELECT
	DatePart(second, DateAdd(second, 41, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

