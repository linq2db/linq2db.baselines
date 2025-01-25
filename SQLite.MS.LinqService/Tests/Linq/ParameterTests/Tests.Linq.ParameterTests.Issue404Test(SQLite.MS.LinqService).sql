BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table404One]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table404Two]
(
	[Id]           INTEGER NOT NULL,
	[Usage]        INTEGER NOT NULL,
	[FirstTableId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite

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
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Usage  -- Int32
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
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Usage  -- Int32
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
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table404One]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table404Two]
(
	[Id]           INTEGER NOT NULL,
	[Usage]        INTEGER NOT NULL,
	[FirstTableId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
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
-- SQLite.MS SQLite

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
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Usage  -- Int32
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
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Usage  -- Int32
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
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table404One]

