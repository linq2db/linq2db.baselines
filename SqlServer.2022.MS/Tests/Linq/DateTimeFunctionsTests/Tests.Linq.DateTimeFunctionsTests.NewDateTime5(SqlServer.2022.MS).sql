-- SqlServer.2022.MS SqlServer.2022

SELECT
	DATETIME2FROMPARTS(DatePart(year, [t].[DateTimeValue]) + 1, 10, 1, 0, 0, 0, 0, 3)
FROM
	[LinqDataTypes] [t]

