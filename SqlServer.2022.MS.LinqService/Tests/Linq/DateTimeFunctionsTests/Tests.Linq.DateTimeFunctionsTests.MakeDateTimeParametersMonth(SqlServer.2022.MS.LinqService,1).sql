BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(month, (2010 + [t].[ID] - 1900) * 12, 0)
FROM
	[LinqDataTypes] [t]

