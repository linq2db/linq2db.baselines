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

INSERT INTO [Issue2933Car]
(
	[PersonId],
	[Id]
)
SELECT 1,1 UNION ALL
SELECT NULL,2

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

INSERT INTO [Issue2933Person]
(
	[Id]
)
SELECT 1

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

INSERT INTO [Issue2933Pet]
(
	[Name],
	[Id],
	[PersonId]
)
SELECT 'Snuffles',1,1 UNION ALL
SELECT 'Buddy',2,1

BeforeExecute
-- SqlCe

SELECT
	[x].[Id],
	[t1].[Name]
FROM
	[Issue2933Car] [x]
		LEFT JOIN [Issue2933Person] [a_Person] ON [x].[PersonId] = [a_Person].[Id] AND [x].[PersonId] IS NOT NULL
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

