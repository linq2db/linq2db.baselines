-- SqlServer.2012.MS SqlServer.2012
SELECT DISTINCT
	CAST([g_1].[dt] AS Date)
FROM
	[Issue1613] [g_1]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	CAST(Coalesce([r].[dt], DATETIMEOFFSETFROMPARTS(1, 1, 1, 0, 0, 0, 0, 0, 0, 7)) AS Date)
FROM
	[Issue1613] [r]

