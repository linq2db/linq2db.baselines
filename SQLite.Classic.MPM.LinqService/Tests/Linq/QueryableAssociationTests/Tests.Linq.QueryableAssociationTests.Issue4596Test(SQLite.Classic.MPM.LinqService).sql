BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[m_1].[Id],
	[m_1].[cond],
	[m_1].[cond_1],
	[d].[Id],
	[d].[FormId],
	[d].[OrderIndex],
	[d].[Name1],
	[d].[Name2],
	[d].[Name3]
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[C1] = 'T' as [cond],
			[t1].[C1] <> 'T' as [cond_1]
		FROM
			[Issue4596Form] [t1]
		LIMIT 1
	) [m_1],
	[Issue4596Item] [d]
WHERE
	[d].[FormId] = [m_1].[Id]
ORDER BY
	CASE
		WHEN [m_1].[cond] THEN [d].[OrderIndex]
		ELSE 0
	END,
	CASE
		WHEN [m_1].[cond_1] THEN [d].[Name1]
		ELSE ''
	END,
	CASE
		WHEN [m_1].[cond_1] THEN [d].[Name2]
		ELSE ''
	END,
	CASE
		WHEN [m_1].[cond_1] THEN [d].[Name3]
		ELSE ''
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[C1],
	[t1].[C1] = 'T',
	[t1].[C1] <> 'T'
FROM
	[Issue4596Form] [t1]
LIMIT 1

