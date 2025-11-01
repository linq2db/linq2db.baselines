-- SqlServer.2008.MS SqlServer.2008

SELECT
	ISNULL([t].[Value2], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	ISNULL([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	SUBSTRING(((ISNULL((N' -> ' + [t].[Value3]), '') + ISNULL((N' -> ' + [t].[Value1]), '')) + ISNULL((N' -> ' + [t].[Value2]), '')), LEN(CONVERT(NVARCHAR(MAX), N' -> ') + N'!'), 8000)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	SUBSTRING((ISNULL((N' -> ' + [t].[Value3]), '') + ISNULL((N' -> ' + [t].[Value3]), '')), LEN(CONVERT(NVARCHAR(MAX), N' -> ') + N'!'), 8000)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

