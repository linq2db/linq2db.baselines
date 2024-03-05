BeforeExecute
-- SqlServer.2008

SELECT
	DateAdd(month, ((2010 + [t].[ID]) - 1900) * 12 + 9, 0)
FROM
	[LinqDataTypes] [t]

