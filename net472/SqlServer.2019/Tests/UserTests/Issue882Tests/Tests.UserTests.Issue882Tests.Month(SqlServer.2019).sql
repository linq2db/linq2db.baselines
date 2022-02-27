BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

