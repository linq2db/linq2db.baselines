BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + N'-01-01 00:20:00' AS DateTime)
FROM
	[LinqDataTypes] [t]

