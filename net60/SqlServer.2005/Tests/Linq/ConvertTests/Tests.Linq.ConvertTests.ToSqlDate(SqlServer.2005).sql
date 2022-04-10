BeforeExecute
-- SqlServer.2005

SELECT
	Convert(Datetime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01')
FROM
	[LinqDataTypes] [t]

