BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Fact]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Tag]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Tag]
(
	[Id]     Int           NOT NULL,
	[FactId] Int           NOT NULL,
	[Name]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FactId Int -- Int32
SET     @FactId = 3
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FactId Int -- Int32
SET     @FactId = 3
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FactId Int -- Int32
SET     @FactId = 4
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Tag4'

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[fact_1].[Id],
	[t1].[Id],
	[t1].[FactId],
	[t1].[Name]
FROM
	[Tag] [t1]
		RIGHT JOIN [Fact] [fact_1] ON ([t1].[FactId] = [fact_1].[Id])
WHERE
	[fact_1].[Id] > 3

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Tag]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Fact]

