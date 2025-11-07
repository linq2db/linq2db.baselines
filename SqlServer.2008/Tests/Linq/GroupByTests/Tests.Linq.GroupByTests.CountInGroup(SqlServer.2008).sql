-- SqlServer.2008

SELECT
	[t].[GroupId],
	COUNT(*),
	COUNT(CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT [t].[DataValue]),
	COUNT(DISTINCT CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	COUNT(CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	COUNT(DISTINCT [t].[DataValue])
FROM
	[AggregationData] [t]
WHERE
	[t].[DataValue] IS NOT NULL
GROUP BY
	[t].[GroupId]

-- SqlServer.2008

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

