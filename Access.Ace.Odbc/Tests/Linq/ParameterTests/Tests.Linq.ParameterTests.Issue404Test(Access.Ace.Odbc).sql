BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table404One]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table404Two]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @cond Int -- Int32
SET     @cond = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])
WHERE
	[d].[Usage] = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @cond Int -- Int32
SET     @cond = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])
WHERE
	[d].[Usage] = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table404Two]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table404One]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table404One]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table404Two]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @cond Int -- Int32
SET     @cond = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])
WHERE
	[d].[Usage] = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @cond Int -- Int32
SET     @cond = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])
WHERE
	[d].[Usage] = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table404Two]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table404One]

