BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue2933Car]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue2933Car]
(
	[PersonId] Int     NULL,
	[Id]       Int NOT NULL,

	CONSTRAINT [PK_Issue2933Car] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue2933Person]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue2933Person]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Issue2933Person] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Issue2933Person]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue2933Pet]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue2933Pet]
(
	[Name]     NVarChar(255) NOT NULL,
	[Id]       Int           NOT NULL,
	[PersonId] Int           NOT NULL,

	CONSTRAINT [PK_Issue2933Pet] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[Id],
	(
		SELECT TOP 1
			[a_PetIds].[Name]
		FROM
			[Issue2933Pet] [a_PetIds]
		WHERE
			[a_Person].[Id] = [a_PetIds].[PersonId]
	)
FROM
	[Issue2933Car] [x]
		LEFT JOIN [Issue2933Person] [a_Person] ON ([x].[PersonId] = [a_Person].[Id])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue2933Pet]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue2933Person]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue2933Car]

