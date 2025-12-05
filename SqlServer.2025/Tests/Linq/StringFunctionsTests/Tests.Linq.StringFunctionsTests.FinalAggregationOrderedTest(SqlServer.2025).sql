-- SqlServer.2025 SqlServer.2022

SELECT
	STRING_AGG([t1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1])
FROM
	[SampleClass] [t1]

-- SqlServer.2025 SqlServer.2022

SELECT
	STRING_AGG([t1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1])
FROM
	[SampleClass] [t1]

-- SqlServer.2025 SqlServer.2022

SELECT
	STRING_AGG([t1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1] DESC)
FROM
	[SampleClass] [t1]

-- SqlServer.2025 SqlServer.2022

SELECT
	STRING_AGG([t1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1] DESC)
FROM
	[SampleClass] [t1]

