BeforeExecute
-- SqlCe

DROP TABLE [Issue2933Car]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue2933Car]
(
	[PersonId] Int     NULL,
	[Id]       Int NOT NULL,

	CONSTRAINT [PK_Issue2933Car] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe

DROP TABLE [Issue2933Person]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue2933Person]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Issue2933Person] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
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
-- SqlCe

DROP TABLE [Issue2933Pet]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue2933Pet]
(
	[Name]     NVarChar(255) NOT NULL,
	[Id]       Int           NOT NULL,
	[PersonId] Int           NOT NULL,

	CONSTRAINT [PK_Issue2933Pet] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Snuffles'
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
-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Buddy'
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
-- SqlCe

SELECT
	[x].[Id],
	[t1].[Name]
FROM
	[Issue2933Car] [x]
		LEFT JOIN [Issue2933Person] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		OUTER APPLY (
			SELECT TOP (1)
				[a_PetIds].[Name]
			FROM
				[Issue2933Pet] [a_PetIds]
			WHERE
				[a_Person].[Id] = [a_PetIds].[PersonId]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue2933Pet]

BeforeExecute
-- SqlCe

DROP TABLE [Issue2933Person]

BeforeExecute
-- SqlCe

DROP TABLE [Issue2933Car]

