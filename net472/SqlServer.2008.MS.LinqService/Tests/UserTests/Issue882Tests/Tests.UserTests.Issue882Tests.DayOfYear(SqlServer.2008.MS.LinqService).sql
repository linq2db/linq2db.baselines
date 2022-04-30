BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

