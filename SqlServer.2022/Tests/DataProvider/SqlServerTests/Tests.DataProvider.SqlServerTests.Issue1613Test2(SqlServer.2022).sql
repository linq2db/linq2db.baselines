-- SqlServer.2022
SELECT DISTINCT
	CAST([g_1].[dt] AS Date)
FROM
	[Issue1613] [g_1]

-- SqlServer.2022
SELECT
	CAST(Coalesce([r].[dt], DATETIMEOFFSETFROMPARTS(1, 1, 1, 0, 0, 0, 0, 0, 0, 7)) AS Date)
FROM
	[Issue1613] [r]

