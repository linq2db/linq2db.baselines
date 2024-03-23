BeforeExecute
-- SqlServer.2022

SELECT
	DatePart(second, DateAdd(second, -35, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

