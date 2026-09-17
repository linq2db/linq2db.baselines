-- SqlServer.2008
SELECT DISTINCT
	CAST([g_1].[dt] AS Date)
FROM
	[Issue1613] [g_1]

-- SqlServer.2008
SELECT
	CAST(Coalesce([r].[dt], CAST('0001-01-01T00:00:00.0000000+00:00' AS DATETIMEOFFSET)) AS Date)
FROM
	[Issue1613] [r]

