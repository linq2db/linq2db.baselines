BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table2_3014]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table2_3014]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER NOT NULL,
	[IsTrue]   Bit         NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Table2_3014]
(
	[Id],
	[ParentId],
	[IsTrue]
)
VALUES
(1,0,1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableStatus_3014]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TableStatus_3014]
(
	[StatusId]   INTEGER       NOT NULL,
	[StatusName] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_TableStatus_3014] PRIMARY KEY ([StatusId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TableStatus_3014]
(
	[StatusId],
	[StatusName]
)
VALUES
(1,'Sample')

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	1
FROM
	[TableStatus_3014] [x]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id]
FROM
	[Table2_3014] [t]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	1
FROM
	[TableStatus_3014] [x]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id]
FROM
	[Table2_3014] [x]
WHERE
	[x].[Id] = 0

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	1
FROM
	[TableStatus_3014] [x]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id]
FROM
	[Table2_3014] [x]
WHERE
	1 = 0

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	1
FROM
	[TableStatus_3014] [x]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id]
FROM
	[Table2_3014] [e]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableStatus_3014]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table2_3014]

