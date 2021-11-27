BeforeExecute
-- SqlServer.2005

SELECT
	Convert(Datetime, Convert(NVarChar(100), DatePart(year, [t].[DateTimeValue])) + N'-01-01')
FROM
	[LinqDataTypes] [t]

