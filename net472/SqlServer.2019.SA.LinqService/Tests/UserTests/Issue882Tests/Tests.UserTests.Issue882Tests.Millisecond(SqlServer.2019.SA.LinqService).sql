BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

