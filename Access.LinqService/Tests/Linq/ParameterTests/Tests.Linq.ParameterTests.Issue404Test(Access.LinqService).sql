BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table404One]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table404Two]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Usage Integer -- Int32
SET     @Usage = 0

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
	[d].[Usage] = @Usage

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Usage Integer -- Int32
SET     @Usage = 1

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
	[d].[Usage] = @Usage

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table404Two]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table404One]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table404One]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table404Two]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Usage Integer -- Int32
SET     @Usage = 0

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
	[d].[Usage] = @Usage

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Usage Integer -- Int32
SET     @Usage = 1

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
	[d].[Usage] = @Usage

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table404Two]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table404One]

