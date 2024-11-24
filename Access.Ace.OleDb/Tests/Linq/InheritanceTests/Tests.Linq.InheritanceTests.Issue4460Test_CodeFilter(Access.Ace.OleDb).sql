﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Base]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Base]
(
	[Code] NVarChar(255)     NULL,
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Code VarWChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'Jane'

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name]
)
VALUES
(
	@Code,
	@Id,
	@Name
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Code VarWChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Age]
)
VALUES
(
	@Code,
	@Id,
	@Age
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([e].[Code] = 'Child2', True, False),
	[e].[Code],
	[e].[Id],
	[e].[Age],
	IIF([e].[Code] = 'Child', True, False),
	[e].[Name]
FROM
	[Base] [e]
WHERE
	[e].[Code] <> 'Child' OR [e].[Code] IS NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Base]

