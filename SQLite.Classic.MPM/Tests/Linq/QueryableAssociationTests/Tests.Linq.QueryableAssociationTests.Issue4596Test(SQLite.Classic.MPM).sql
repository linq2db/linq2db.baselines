BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4596Form]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4596Form]
(
	[Id] INTEGER  NOT NULL,
	[C1] NChar(1) NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4596Item]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[c1],
	[m_1].[c2],
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
			CASE
				WHEN [t1].[C1] = 'T' THEN 1
				ELSE 0
			END as [c1],
			CASE
				WHEN [t1].[C1] <> 'T' THEN 1
				ELSE 0
			END as [c2]
		FROM
			[Issue4596Form] [t1]
		LIMIT 1
	) [m_1],
	[Issue4596Item] [d]
WHERE
	[d].[FormId] = [m_1].[Id]
ORDER BY
	CASE
		WHEN [m_1].[c1] = 1 THEN [d].[OrderIndex]
		ELSE 0
	END,
	CASE
		WHEN [m_1].[c2] = 1 THEN [d].[Name1]
		ELSE ''
	END,
	CASE
		WHEN [m_1].[c2] = 1 THEN [d].[Name2]
		ELSE ''
	END,
	CASE
		WHEN [m_1].[c2] = 1 THEN [d].[Name3]
		ELSE ''
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[C1],
	CASE
		WHEN [t1].[C1] = 'T' THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[C1] <> 'T' THEN 1
		ELSE 0
	END
FROM
	[Issue4596Form] [t1]
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4596Item]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4596Form]

