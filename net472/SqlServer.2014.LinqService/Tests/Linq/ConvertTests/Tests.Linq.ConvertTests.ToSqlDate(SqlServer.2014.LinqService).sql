BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Convert(Date, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01')
FROM
	[LinqDataTypes] [t]

