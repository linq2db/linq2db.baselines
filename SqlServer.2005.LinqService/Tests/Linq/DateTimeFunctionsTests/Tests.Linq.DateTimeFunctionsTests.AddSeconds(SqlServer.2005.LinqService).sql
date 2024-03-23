BeforeExecute
-- SqlServer.2005

SELECT
	DatePart(second, DateAdd(second, -35, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

