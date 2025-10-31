BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	Coalesce([t].[Value2], N'')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	Coalesce([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	SUBSTRING(Coalesce(N' -> ' + [t].[Value3], '') + Coalesce(N' -> ' + [t].[Value1], '') + Coalesce(N' -> ' + [t].[Value2], ''), 5, 2147483647)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	SUBSTRING(Coalesce(N' -> ' + [t].[Value3], '') + Coalesce(N' -> ' + [t].[Value3], ''), 5, 2147483647)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

