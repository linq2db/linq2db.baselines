﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Emails]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Emails]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EmailAttachment]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EmailAttachment]
(
	[Id]       INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[EmailId]  INTEGER        NOT NULL,
	[FileName] NVarChar(255)  NOT NULL
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 35
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Email].[Id],
	[detail].[Id],
	[detail].[EmailId],
	[detail].[FileName]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[c_1].[Id]
				FROM
					[Emails] [c_1]
				WHERE
					[c_1].[Id] = @Id
				LIMIT @take
			) [t1]
	) [lw_Email]
		INNER JOIN [EmailAttachment] [detail] ON [lw_Email].[Id] = [detail].[EmailId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 35
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[c_1].[Id]
FROM
	[Emails] [c_1]
WHERE
	[c_1].[Id] = @Id
LIMIT @take

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 36
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Email].[Id],
	[detail].[Id],
	[detail].[EmailId],
	[detail].[FileName]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[c_1].[Id]
				FROM
					[Emails] [c_1]
				WHERE
					[c_1].[Id] = @Id
				LIMIT @take
			) [t1]
	) [lw_Email]
		INNER JOIN [EmailAttachment] [detail] ON [lw_Email].[Id] = [detail].[EmailId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 36
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[c_1].[Id]
FROM
	[Emails] [c_1]
WHERE
	[c_1].[Id] = @Id
LIMIT @take

BeforeExecute
RollbackTransaction
BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EmailAttachment]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Emails]

