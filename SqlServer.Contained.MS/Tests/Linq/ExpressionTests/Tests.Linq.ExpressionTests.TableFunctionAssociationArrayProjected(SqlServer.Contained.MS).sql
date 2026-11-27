-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[m_1].[ArrayString],
	[d].[value]
FROM
	(
		SELECT DISTINCT
			[a].[ArrayString]
		FROM
			[StringSplitArrayTable] [a]
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], N',') [d]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[a].[Id],
	[a].[ArrayString]
FROM
	[StringSplitArrayTable] [a]
ORDER BY
	[a].[Id]

