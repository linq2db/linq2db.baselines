BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Names]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Names]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Addresses]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Addresses]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Text]
FROM
	(
		SELECT DISTINCT
			[Item1].[Id]
		FROM
			[Names] [Item1]
	) [m_1]
		INNER JOIN [Addresses] [d] ON ([m_1].[Id] = [d].[Id])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[tupledArg].[Id],
	[tupledArg].[Name]
FROM
	[Names] [tupledArg]
ORDER BY
	[tupledArg].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Addresses]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Names]

