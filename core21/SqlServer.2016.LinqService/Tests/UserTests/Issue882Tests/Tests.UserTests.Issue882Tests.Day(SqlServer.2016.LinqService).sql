BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

