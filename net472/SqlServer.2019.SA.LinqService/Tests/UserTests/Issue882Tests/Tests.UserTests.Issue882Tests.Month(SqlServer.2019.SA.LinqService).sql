BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

