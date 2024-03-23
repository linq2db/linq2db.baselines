BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Convert(Date, DateAdd(dayofyear, 3, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

