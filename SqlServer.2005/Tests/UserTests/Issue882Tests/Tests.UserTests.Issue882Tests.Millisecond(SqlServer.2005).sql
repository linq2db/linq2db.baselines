BeforeExecute
-- SqlServer.2005

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

