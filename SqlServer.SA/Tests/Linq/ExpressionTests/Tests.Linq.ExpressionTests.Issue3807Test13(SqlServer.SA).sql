-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ArrayString],
	[d].[value]
FROM
	(
		SELECT DISTINCT
			[r].[ArrayString]
		FROM
			[Issue3807Table] [r]
		WHERE
			N'two' IN (
				SELECT
					[r_1].[value]
				FROM
					[STRING_SPLIT]([r].[ArrayString], N',') [r_1]
			)
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], N',') [d]

-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[ArrayString]
FROM
	[Issue3807Table] [r]
WHERE
	N'two' IN (
		SELECT
			[r_1].[value]
		FROM
			[STRING_SPLIT]([r].[ArrayString], N',') [r_1]
	)
ORDER BY
	[r].[Id]

