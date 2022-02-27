BeforeExecute
-- SqlServer.2008

SELECT
	Convert(Date, Convert(NVarChar(100), DatePart(year, [t].[DateTimeValue])) + N'-01-01')
FROM
	[LinqDataTypes] [t]

