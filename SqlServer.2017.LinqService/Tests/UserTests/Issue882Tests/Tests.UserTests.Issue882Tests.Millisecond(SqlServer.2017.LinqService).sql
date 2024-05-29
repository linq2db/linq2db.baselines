BeforeExecute
-- SqlServer.2017

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

