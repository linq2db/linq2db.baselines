BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

