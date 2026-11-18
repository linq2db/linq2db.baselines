-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CASE
		WHEN [u_1].[Key_1] IS NOT NULL THEN [u_1].[Key_1]
		ELSE -1
	END
FROM
	(
		SELECT
			[u].[Id] as [Key_1]
		FROM
			[DetailClass] [u]
		WHERE
			[u].[Id] = 1
		UNION ALL
		SELECT
			[m_1].[Id] as [Key_1]
		FROM
			[DetailClass] [d]
				LEFT JOIN [MasterClass] [m_1] ON [m_1].[Id] = [d].[MasterId] AND NOT [m_1].[IsDeleted]
		WHERE
			[d].[Id] = 2
	) [u_1]

