BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Car') IS NOT NULL)
	DROP TABLE [Issue2933Car]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Car') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2933Car]
		(
			[PersonId] Int     NULL,
			[Id]       Int NOT NULL,

			CONSTRAINT [PK_Issue2933Car] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @PersonId Integer -- Int32
SET     @PersonId = NULL
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Person') IS NOT NULL)
	DROP TABLE [Issue2933Person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Person') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2933Person]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Issue2933Person] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Pet') IS NOT NULL)
	DROP TABLE [Issue2933Pet]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Pet') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2933Pet]
		(
			[Name]     NVarChar(255) NOT NULL,
			[Id]       Int           NOT NULL,
			[PersonId] Int           NOT NULL,

			CONSTRAINT [PK_Issue2933Pet] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'Snuffles'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @PersonId Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'Buddy'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @PersonId Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Pet') IS NOT NULL)
	DROP TABLE [Issue2933Pet]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Person') IS NOT NULL)
	DROP TABLE [Issue2933Person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Car') IS NOT NULL)
	DROP TABLE [Issue2933Car]

