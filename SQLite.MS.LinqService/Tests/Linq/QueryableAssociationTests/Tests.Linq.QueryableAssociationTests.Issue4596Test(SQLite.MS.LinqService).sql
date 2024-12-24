BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4596Form]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4596Form]
(
	[Id] INTEGER  NOT NULL,
	[C1] NChar(1) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4596Item]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4596Item]
(
	[Id]         INTEGER       NOT NULL,
	[FormId]     INTEGER       NOT NULL,
	[OrderIndex] INTEGER       NOT NULL,
	[Name1]      NVarChar(255)     NULL,
	[Name2]      NVarChar(255)     NULL,
	[Name3]      NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[C1],
	[t1].[C1] = 'T',
	[t1].[C1] <> 'T'
FROM
	[Issue4596Form] [t1]
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4596Item]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4596Form]

