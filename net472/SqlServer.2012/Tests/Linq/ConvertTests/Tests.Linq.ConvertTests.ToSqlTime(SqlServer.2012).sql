BeforeExecute
-- SqlServer.2012

SELECT
	Convert(NVarChar(100), DatePart(hour, [t].[DateTimeValue])) + N':01:01'
FROM
	[LinqDataTypes] [t]

