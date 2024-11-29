BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Names]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Names]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Addresses]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Addresses]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO [Names]
(
	[Id],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO [Names]
(
	[Id],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(7) -- String
SET     @Text = 'address'

INSERT INTO [Addresses]
(
	[Id],
	[Text]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[tupledArg].[Id],
	[tupledArg].[Name],
	[arg2].[Id],
	[arg2].[Text]
FROM
	[Names] [tupledArg]
		LEFT JOIN [Addresses] [arg2] ON ([tupledArg].[Id] = [arg2].[Id])
ORDER BY
	[tupledArg].[Id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Addresses]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Names]

