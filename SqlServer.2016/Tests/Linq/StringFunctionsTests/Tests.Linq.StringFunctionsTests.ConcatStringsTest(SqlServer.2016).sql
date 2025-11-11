-- SqlServer.2016

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

-- SqlServer.2016

SELECT
	Coalesce([t].[Value2], N'')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2016

SELECT
	Coalesce([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2016

SELECT
	SUBSTRING(Coalesce(N' -> ' + [t].[Value3], '') + Coalesce(N' -> ' + [t].[Value1], '') + Coalesce(N' -> ' + [t].[Value2], ''), 5, 2147483647)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2016

SELECT
	SUBSTRING(Coalesce(N' -> ' + [t].[Value3], '') + Coalesce(N' -> ' + [t].[Value3], ''), 5, 2147483647)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

