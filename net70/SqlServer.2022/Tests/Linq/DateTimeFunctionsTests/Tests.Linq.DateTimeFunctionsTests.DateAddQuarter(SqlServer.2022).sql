BeforeExecute
-- SqlServer.2022

SELECT
	DateAdd(quarter, -1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

