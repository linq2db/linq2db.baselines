BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

