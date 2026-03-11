-- SqlServer.2019.MS SqlServer.2019

SELECT
	DATETIME2FROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 20, 35, 44, 0, 3)
FROM
	[LinqDataTypes] [t]

