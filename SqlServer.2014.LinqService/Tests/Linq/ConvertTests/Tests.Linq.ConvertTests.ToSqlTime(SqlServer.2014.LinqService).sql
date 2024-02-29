BeforeExecute
-- SqlServer.2014

SELECT
	Convert(VarChar(11), DatePart(hour, [t].[DateTimeValue])) + N':01:01'
FROM
	[LinqDataTypes] [t]

