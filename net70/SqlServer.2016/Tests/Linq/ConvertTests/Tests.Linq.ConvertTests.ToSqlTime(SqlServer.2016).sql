BeforeExecute
-- SqlServer.2016

SELECT
	Convert(VarChar(11), DatePart(hour, [t].[DateTimeValue])) + N':01:01'
FROM
	[LinqDataTypes] [t]

