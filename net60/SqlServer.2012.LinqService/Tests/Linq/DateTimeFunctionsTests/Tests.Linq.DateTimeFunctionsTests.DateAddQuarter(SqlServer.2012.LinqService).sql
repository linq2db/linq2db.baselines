BeforeExecute
-- SqlServer.2012

SELECT
	DateAdd(quarter, -1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

