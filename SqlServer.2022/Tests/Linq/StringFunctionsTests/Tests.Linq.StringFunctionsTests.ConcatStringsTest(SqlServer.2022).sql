-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3],
	[t1].[Value4]
FROM
	[SampleClass] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

SELECT
	Coalesce([t].[Value2], N'')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2022

SELECT
	Coalesce([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2022

SELECT
	CONCAT_WS(N' -> ', [t].[Value3], [t].[Value1], [t].[Value2])
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2022

SELECT
	CONCAT_WS(N' -> ', [t].[Value3], [t].[Value3])
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

