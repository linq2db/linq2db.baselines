BeforeExecute
-- SqlServer.2016

SELECT
	Convert(NVarChar(100), DatePart(hour, [t].[DateTimeValue])) + N':01:01'
FROM
	[LinqDataTypes] [t]

