BeforeExecute
-- SqlServer.2008

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, [t].[DateTimeValue]) > 0

