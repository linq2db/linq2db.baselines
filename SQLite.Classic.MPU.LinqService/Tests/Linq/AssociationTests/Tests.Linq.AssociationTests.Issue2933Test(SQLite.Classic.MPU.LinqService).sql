BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2933Car]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2933Car]
(
	[PersonId] INTEGER     NULL,
	[Id]       INTEGER NOT NULL,

	CONSTRAINT [PK_Issue2933Car] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @PersonId  -- Int32
SET     @PersonId = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Issue2933Car]
(
	[PersonId],
	[Id]
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @PersonId  -- Int32
SET     @PersonId = NULL
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [Issue2933Car]
(
	[PersonId],
	[Id]
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2933Person]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2933Person]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue2933Person] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Issue2933Person]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2933Pet]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2933Pet]
(
	[Name]     NVarChar(255) NOT NULL,
	[Id]       INTEGER       NOT NULL,
	[PersonId] INTEGER       NOT NULL,

	CONSTRAINT [PK_Issue2933Pet] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Snuffles'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @PersonId  -- Int32
SET     @PersonId = 1

INSERT INTO [Issue2933Pet]
(
	[Name],
	[Id],
	[PersonId]
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Buddy'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @PersonId  -- Int32
SET     @PersonId = 1

INSERT INTO [Issue2933Pet]
(
	[Name],
	[Id],
	[PersonId]
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id],
	(
		SELECT
			[a_PetIds].[Name]
		FROM
			[Issue2933Pet] [a_PetIds]
		WHERE
			[a_Person].[Id] = [a_PetIds].[PersonId]
		LIMIT 1
	)
FROM
	[Issue2933Car] [x]
		LEFT JOIN [Issue2933Person] [a_Person] ON [x].[PersonId] = [a_Person].[Id] AND [x].[PersonId] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2933Pet]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2933Person]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2933Car]

