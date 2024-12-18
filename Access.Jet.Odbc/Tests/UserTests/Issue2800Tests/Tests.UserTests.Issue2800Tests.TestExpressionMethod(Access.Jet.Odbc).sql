BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Car]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Car]
(
	[Id]   Int          NOT NULL,
	[Name] NVarChar(50)     NULL,

	CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'Special'

INSERT INTO [Car]
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
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'NoSpecial'

INSERT INTO [Car]
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

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] <> 'Special' OR [x].[Name] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = 'Special' AND [x].[Name] IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] <> 'Special' OR [x].[Name] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = 'Special' AND [x].[Name] IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Car]

