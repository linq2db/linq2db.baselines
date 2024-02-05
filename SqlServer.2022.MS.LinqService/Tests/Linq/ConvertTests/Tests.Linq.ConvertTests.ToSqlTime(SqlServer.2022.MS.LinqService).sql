BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Convert(VarChar(11), DatePart(hour, [t].[DateTimeValue])) + N':01:01'
FROM
	[LinqDataTypes] [t]

