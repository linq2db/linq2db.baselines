BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

