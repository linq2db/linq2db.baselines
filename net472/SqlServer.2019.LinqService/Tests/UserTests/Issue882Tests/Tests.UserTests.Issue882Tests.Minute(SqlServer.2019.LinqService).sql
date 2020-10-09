BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

