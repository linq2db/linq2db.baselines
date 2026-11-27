-- SqlServer.2008.MS SqlServer.2008
SELECT
	CAST([t].[D] AS Int) / 2
FROM
	[DoubleStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t].[Id]
FROM
	[DoubleStoredIntegerTable] [t]
WHERE
	CAST([t].[D] AS Int) / 2 = -3
ORDER BY
	[t].[Id]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

