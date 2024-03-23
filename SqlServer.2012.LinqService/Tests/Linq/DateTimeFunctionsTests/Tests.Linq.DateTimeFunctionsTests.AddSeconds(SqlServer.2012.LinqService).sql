BeforeExecute
-- SqlServer.2012

SELECT
	DatePart(second, DateAdd(second, -35, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

