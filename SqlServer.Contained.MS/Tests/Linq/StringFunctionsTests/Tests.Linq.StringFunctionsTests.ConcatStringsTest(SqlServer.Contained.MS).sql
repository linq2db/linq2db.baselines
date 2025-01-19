BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	ISNULL([t].[Value2], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	ISNULL([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	CONCAT_WS(N' -> ', [t].[Value3], [t].[Value1], [t].[Value2])
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	CONCAT_WS(N' -> ', [t].[Value3], [t].[Value3])
FROM
	[SampleClass] [t]

