-- SqlServer.2025.MS SqlServer.2025

SELECT
	[m_1].[ArrayString],
	[d].[value]
FROM
	(
		SELECT DISTINCT
			[a].[ArrayString]
		FROM
			[Issue3807Table] [a]
		WHERE
			N'two' IN (
				SELECT
					[r].[value] as [Value_1]
				FROM
					[STRING_SPLIT]([a].[ArrayString], N',') [r]
			)
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], N',') [d]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[a].[Id],
	[a].[ArrayString]
FROM
	[Issue3807Table] [a]
WHERE
	N'two' IN (
		SELECT
			[r].[value] as [Value_1]
		FROM
			[STRING_SPLIT]([a].[ArrayString], N',') [r]
	)
ORDER BY
	[a].[Id]

