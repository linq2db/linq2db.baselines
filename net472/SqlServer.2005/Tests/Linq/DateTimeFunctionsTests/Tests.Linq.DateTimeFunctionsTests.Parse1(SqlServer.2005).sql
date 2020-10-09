BeforeExecute
-- SqlServer.2005

SELECT 
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, [t].[DateTimeValue]) > 0

