-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + N'-01-01 00:20:00' AS DateTime2)
FROM
	[LinqDataTypes] [t]

