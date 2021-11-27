BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Convert(Date, Convert(NVarChar(100), DatePart(year, [t].[DateTimeValue])) + N'-01-01')
FROM
	[LinqDataTypes] [t]

