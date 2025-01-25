BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	CAST(DateAdd(quarter, -1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

