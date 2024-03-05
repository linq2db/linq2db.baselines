BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DateAdd(month, ((2010 + [t].[ID]) - 1900) * 12, 0)
FROM
	[LinqDataTypes] [t]

