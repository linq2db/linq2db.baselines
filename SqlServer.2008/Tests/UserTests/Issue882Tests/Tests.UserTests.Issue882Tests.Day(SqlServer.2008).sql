BeforeExecute
-- SqlServer.2008

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

