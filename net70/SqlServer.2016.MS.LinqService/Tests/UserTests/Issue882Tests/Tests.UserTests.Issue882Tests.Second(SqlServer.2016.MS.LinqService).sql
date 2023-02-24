BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

