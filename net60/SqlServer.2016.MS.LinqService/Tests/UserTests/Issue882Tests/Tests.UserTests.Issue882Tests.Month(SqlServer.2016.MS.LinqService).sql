BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

