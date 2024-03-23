BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Emails]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Emails]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachment]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmailAttachment]
(
	[Id]       INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[EmailId]  INTEGER        NOT NULL,
	[FileName] NVarChar(255)  NOT NULL
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 35

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[EmailId],
	[d].[FileName]
FROM
	(
		SELECT
			[c_1].[Id]
		FROM
			[Emails] [c_1]
		WHERE
			[c_1].[Id] = @Id
		LIMIT 1
	) [m_1]
		INNER JOIN [EmailAttachment] [d] ON [m_1].[Id] = [d].[EmailId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 35

SELECT
	[c_1].[Id]
FROM
	[Emails] [c_1]
WHERE
	[c_1].[Id] = @Id
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 36

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[EmailId],
	[d].[FileName]
FROM
	(
		SELECT
			[c_1].[Id]
		FROM
			[Emails] [c_1]
		WHERE
			[c_1].[Id] = @Id
		LIMIT 1
	) [m_1]
		INNER JOIN [EmailAttachment] [d] ON [m_1].[Id] = [d].[EmailId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 36

SELECT
	[c_1].[Id]
FROM
	[Emails] [c_1]
WHERE
	[c_1].[Id] = @Id
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachment]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Emails]

