BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue2933Car]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue2933Car]', N'U') IS NULL)
	CREATE TABLE [Issue2933Car]
	(
		[PersonId] Int     NULL,
		[Id]       Int NOT NULL,

		CONSTRAINT [PK_Issue2933Car] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @PersonId Int -- Int32
SET     @PersonId = 1
DECLARE @Id Int -- Int32
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
-- SqlServer.2022
DECLARE @PersonId Int -- Int32
SET     @PersonId = NULL
DECLARE @Id Int -- Int32
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
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue2933Person]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue2933Person]', N'U') IS NULL)
	CREATE TABLE [Issue2933Person]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Issue2933Person] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
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
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue2933Pet]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue2933Pet]', N'U') IS NULL)
	CREATE TABLE [Issue2933Pet]
	(
		[Name]     NVarChar(4000) NOT NULL,
		[Id]       Int            NOT NULL,
		[PersonId] Int            NOT NULL,

		CONSTRAINT [PK_Issue2933Pet] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Snuffles'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @PersonId Int -- Int32
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
-- SqlServer.2022
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Buddy'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @PersonId Int -- Int32
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
-- SqlServer.2022

SELECT
	[x].[Id],
	(
		SELECT TOP (1)
			[a_PetIds].[Name]
		FROM
			[Issue2933Pet] [a_PetIds]
		WHERE
			[a_Person].[Id] = [a_PetIds].[PersonId]
	)
FROM
	[Issue2933Car] [x]
		LEFT JOIN [Issue2933Person] [a_Person] ON [x].[PersonId] = [a_Person].[Id]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue2933Pet]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue2933Person]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue2933Car]

