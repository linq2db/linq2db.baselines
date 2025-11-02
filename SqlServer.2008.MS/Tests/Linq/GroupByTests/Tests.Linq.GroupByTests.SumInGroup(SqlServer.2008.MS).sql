-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_1].[GroupId],
	SUM([g_1].[DataValue]),
	SUM([g_1].[DataValue]),
	SUM(CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN [g_1].[DataValue]
		ELSE NULL
	END),
	SUM(CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN [g_1].[DataValue]
		ELSE NULL
	END),
	SUM(DISTINCT [g_1].[DataValue]),
	SUM(DISTINCT CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN [g_1].[DataValue]
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN [g_1].[DataValue]
		ELSE NULL
	END)
FROM
	[AggregationData] [g_1]
GROUP BY
	[g_1].[GroupId]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

