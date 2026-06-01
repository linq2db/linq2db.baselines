-- SqlServer.SA.MS SqlServer.2019

SELECT
	STRING_AGG([t1].[Value2], N' -> ') WITHIN GROUP (ORDER BY [t1].[Id])
FROM
	[SampleClass] [t1]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	STRING_AGG([t1].[Value2], N' -> ') WITHIN GROUP (ORDER BY [t1].[Id])
FROM
	[SampleClass] [t1]

