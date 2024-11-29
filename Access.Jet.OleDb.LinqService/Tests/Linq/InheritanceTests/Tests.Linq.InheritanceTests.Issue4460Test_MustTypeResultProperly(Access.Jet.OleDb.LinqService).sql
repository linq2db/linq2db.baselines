BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4460Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4460Table]
(
	[Id]      Int           NOT NULL,
	[Code]    NVarChar(255)     NULL,
	[Name]    NVarChar(255)     NULL,
	[Surname] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code VarWChar(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name VarWChar(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname VarWChar(5) -- String
SET     @Surname = 'Black'

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4460Table]

