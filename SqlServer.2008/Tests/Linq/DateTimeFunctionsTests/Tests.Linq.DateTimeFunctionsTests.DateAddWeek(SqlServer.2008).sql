BeforeExecute
-- SqlServer.2008

SELECT
	Convert(Date, DateAdd(week, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

