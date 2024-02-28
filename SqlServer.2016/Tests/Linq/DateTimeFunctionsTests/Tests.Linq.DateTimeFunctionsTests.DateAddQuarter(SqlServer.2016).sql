BeforeExecute
-- SqlServer.2016

SELECT
	DateAdd(quarter, -1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

