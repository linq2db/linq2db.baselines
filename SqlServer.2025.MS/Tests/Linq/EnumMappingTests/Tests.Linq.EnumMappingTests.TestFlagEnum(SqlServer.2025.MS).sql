-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[TestTable5] [t]
WHERE
	([t].[IntValue] & 1) <> 0

