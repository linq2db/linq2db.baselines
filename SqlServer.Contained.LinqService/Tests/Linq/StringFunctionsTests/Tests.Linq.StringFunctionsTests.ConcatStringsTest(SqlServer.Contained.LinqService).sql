BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	Coalesce([t].[Value2], N'')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	Coalesce([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	CONCAT_WS(N' -> ', [t].[Value3], [t].[Value1], [t].[Value2])
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	CONCAT_WS(N' -> ', [t].[Value3], [t].[Value3])
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

