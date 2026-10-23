-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(1) -- String
SET     @Name = 'a'

INSERT INTO [VOptRow]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar -- String
SET     @Name = NULL

INSERT INTO [VOptRow]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x].[Id],
	[x].[Name]
FROM
	[VOptRow] [x]
WHERE
	[x].[Name] IS NULL

