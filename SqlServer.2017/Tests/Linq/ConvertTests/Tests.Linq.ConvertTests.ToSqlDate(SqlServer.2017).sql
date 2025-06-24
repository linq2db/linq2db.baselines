BeforeExecute
-- SqlServer.2017

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + N'-01-01' AS Date)
FROM
	[LinqDataTypes] [t]

