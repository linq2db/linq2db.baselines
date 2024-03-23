BeforeExecute
-- SqlServer.2008

SELECT
	Convert(Date, DateAdd(year, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

