-- SqlServer.2016

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
					[r].[value]
				FROM
					[STRING_SPLIT]([a].[ArrayString], N',') [r]
			)
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], N',') [d]

-- SqlServer.2016

SELECT
	[a].[Id],
	[a].[ArrayString]
FROM
	[Issue3807Table] [a]
WHERE
	N'two' IN (
		SELECT
			[r].[value]
		FROM
			[STRING_SPLIT]([a].[ArrayString], N',') [r]
	)
ORDER BY
	[a].[Id]

