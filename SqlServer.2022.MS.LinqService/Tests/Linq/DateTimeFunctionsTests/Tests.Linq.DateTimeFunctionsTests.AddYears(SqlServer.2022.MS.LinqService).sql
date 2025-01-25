BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateAdd(year, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

