-- SqlServer.Contained SqlServer.2019

SELECT
	STRING_AGG([t].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t].[Value1])
FROM
	[SampleClass] [t]

-- SqlServer.Contained SqlServer.2019

SELECT
	STRING_AGG([t].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t].[Value1])
FROM
	[SampleClass] [t]

-- SqlServer.Contained SqlServer.2019

SELECT
	STRING_AGG([t].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t].[Value1] DESC)
FROM
	[SampleClass] [t]

-- SqlServer.Contained SqlServer.2019

SELECT
	STRING_AGG([t].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t].[Value1] DESC)
FROM
	[SampleClass] [t]

