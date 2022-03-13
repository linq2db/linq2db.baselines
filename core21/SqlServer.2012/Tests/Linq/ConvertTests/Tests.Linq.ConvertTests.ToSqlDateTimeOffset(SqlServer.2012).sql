BeforeExecute
-- SqlServer.2012

SELECT
	Convert(DateTimeOffset, Convert(NVarChar(100), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

