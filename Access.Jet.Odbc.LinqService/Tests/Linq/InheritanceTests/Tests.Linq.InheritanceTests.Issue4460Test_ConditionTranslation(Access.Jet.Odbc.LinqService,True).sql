BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Base]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Base]
(
	[Code]   NVarChar(255)     NULL,
	[Id]     Int           NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[IsMale] Bit               NULL,
	[Age]    Int               NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Bit -- Boolean
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
-- Access.Jet.Odbc AccessODBC
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
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
-- Access.Jet.Odbc AccessODBC

SELECT
	[e].[Code],
	[e].[Id],
	[e].[Name],
	[e].[IsMale],
	[e].[Age]
FROM
	[Base] [e]
WHERE
	IIF([e].[Code] = 'Child2' OR [e].[Code] = 'Child' OR [e].[Code] = 'BaseChild', True, IIF([e].[Id] <> 0, True, False))
ORDER BY
	[e].[Id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Base]

