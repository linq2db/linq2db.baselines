BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateAdd(month, (2010 + [t].[ID] - 1900) * 12, 0)
FROM
	[LinqDataTypes] [t]

