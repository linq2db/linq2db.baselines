BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DatePart(second, DateAdd(second, 41, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

