﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Base]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Base]
(
	[Code]   NVarChar(255)     NULL,
	[Id]     Int           NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[IsMale] Bit               NULL,
	[Age]    Int               NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Code VarWChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Boolean
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
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Code VarWChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
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
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Base]

