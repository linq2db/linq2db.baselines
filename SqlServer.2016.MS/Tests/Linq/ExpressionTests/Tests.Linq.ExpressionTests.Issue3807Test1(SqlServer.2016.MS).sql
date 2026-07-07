-- SqlServer.2016.MS SqlServer.2016
-- Batch 1
SELECT
	[m_1].[ArrayString],
	[d].[value]
FROM
	(
		SELECT DISTINCT
			[a].[ArrayString]
		FROM
			[Issue3807Table] [a]
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], N',') [d]

-- Batch 2
SELECT
	[a].[Id],
	[a].[ArrayString]
FROM
	[Issue3807Table] [a]
ORDER BY
	[a].[Id]
