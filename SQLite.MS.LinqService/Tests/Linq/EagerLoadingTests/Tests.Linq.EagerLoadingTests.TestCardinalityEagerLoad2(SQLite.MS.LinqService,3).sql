BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMA]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityMA]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMA] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 11
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 12
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 13
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityMB]
(
	[Id]  INTEGER NOT NULL,
	[FK]  INTEGER     NULL,
	[FKD] INTEGER     NULL,

	CONSTRAINT [PK_EntityMB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 20
DECLARE @FK  -- Int32
SET     @FK = 10
DECLARE @FKD  -- Int32
SET     @FKD = 40

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 21
DECLARE @FK  -- Int32
SET     @FK = 11
DECLARE @FKD  -- Int32
SET     @FKD = NULL

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 22
DECLARE @FK  -- Int32
SET     @FK = 11
DECLARE @FKD  -- Int32
SET     @FKD = 40

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 23
DECLARE @FK  -- Int32
SET     @FK = 19
DECLARE @FKD  -- Int32
SET     @FKD = 49

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 24
DECLARE @FK  -- Int32
SET     @FK = 19
DECLARE @FKD  -- Int32
SET     @FKD = NULL

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 25
DECLARE @FK  -- Int32
SET     @FK = NULL
DECLARE @FKD  -- Int32
SET     @FKD = 49

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 26
DECLARE @FK  -- Int32
SET     @FK = NULL
DECLARE @FKD  -- Int32
SET     @FKD = 40

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 27
DECLARE @FK  -- Int32
SET     @FK = 19
DECLARE @FKD  -- Int32
SET     @FKD = 41

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 28
DECLARE @FK  -- Int32
SET     @FK = 10
DECLARE @FKD  -- Int32
SET     @FKD = NULL

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityMC]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMC] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 30
DECLARE @FK  -- Int32
SET     @FK = 20

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 31
DECLARE @FK  -- Int32
SET     @FK = 24

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 32
DECLARE @FK  -- Int32
SET     @FK = 21

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 33
DECLARE @FK  -- Int32
SET     @FK = 21

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 34
DECLARE @FK  -- Int32
SET     @FK = 23

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 35
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 36
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 37
DECLARE @FK  -- Int32
SET     @FK = 29

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityMD]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMD] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 40
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 41
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 42
DECLARE @FK  -- Int32
SET     @FK = NULL

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[FK]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[EntityMA] [t1]
			) [t2]
				INNER JOIN [EntityMB] [d] ON [t2].[Id] = [d].[FK]
	) [m_1]
		INNER JOIN [EntityMC] [d_1] ON [m_1].[Id] = [d_1].[FK]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK],
	[d].[FKD],
	[d].[Id],
	[a_ObjectD].[Id],
	[a_ObjectD].[FK]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]
		LEFT JOIN [EntityMD] [a_ObjectD] ON [d].[FKD] = [a_ObjectD].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[FK],
	[t1].[Id]
FROM
	[EntityMA] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMA]

