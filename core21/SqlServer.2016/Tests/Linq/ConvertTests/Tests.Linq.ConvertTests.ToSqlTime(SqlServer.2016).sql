BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	Convert(VarChar(11), DatePart(hour, [t].[DateTimeValue])) + N':01:01'
FROM
	[LinqDataTypes] [t]

