BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	CAST(CAST(DatePart(year, [p].[DateTimeValue]) AS NVarChar(11)) + N'-01-01 00:00:00' AS DateTime2)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(day, CAST(CAST(DatePart(year, [p].[DateTimeValue]) AS NVarChar(11)) + N'-01-01 00:00:00' AS DateTime2)) > 0

