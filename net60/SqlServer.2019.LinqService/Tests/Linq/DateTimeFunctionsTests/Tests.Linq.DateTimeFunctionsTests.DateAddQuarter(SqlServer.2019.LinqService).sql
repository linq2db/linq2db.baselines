BeforeExecute
-- SqlServer.2019

SELECT
	DateAdd(quarter, -1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

