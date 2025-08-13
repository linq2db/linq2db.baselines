BeforeExecute
-- SqlCe

SELECT
	CAST(CAST(DatePart(year, [p].[DateTimeValue]) AS NVarChar(11)) + '-01-01 00:00:00' AS DateTime) as [Day_1]
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(day, CAST(CAST(DatePart(year, [p].[DateTimeValue]) AS NVarChar(11)) + '-01-01 00:00:00' AS DateTime)) > 0

