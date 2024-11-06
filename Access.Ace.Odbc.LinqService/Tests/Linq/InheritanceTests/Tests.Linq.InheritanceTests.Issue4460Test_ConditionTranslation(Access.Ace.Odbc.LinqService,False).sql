BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Base]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Base]
(
	[Code]   NVarChar(255)     NULL,
	[Id]     Int           NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[IsMale] Bit               NULL,
	[Age]    Int               NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale  -- Boolean
SET     @IsMale = False

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[IsMale]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age  -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[Age]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([e].[Code] = 'Child2', True, False),
	[e].[Code],
	[e].[Id],
	[e].[Name],
	[e].[Age],
	IIF([e].[Code] = 'Child', True, False),
	[e].[IsMale],
	IIF([e].[Code] = 'BaseChild', True, False)
FROM
	[Base] [e]
WHERE
	IIF([e].[Code] = 'BaseChild' OR [e].[Code] = 'Child' OR [e].[Code] = 'Child2', IIF([e].[Id] <> 0, True, False), IIF([e].[Id] <> 0, True, False)) = True
ORDER BY
	[e].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Base]

