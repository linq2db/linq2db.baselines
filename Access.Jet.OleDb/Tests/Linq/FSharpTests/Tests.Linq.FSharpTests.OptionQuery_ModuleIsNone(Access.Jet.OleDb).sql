-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(1) -- String
SET     @Name = 'a'
DECLARE @Age Integer -- Int32
SET     @Age = 5

INSERT INTO [OptRow]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO [OptRow]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Name VarWChar(1) -- String
SET     @Name = 'b'
DECLARE @Age Integer -- Int32
SET     @Age = 7

INSERT INTO [OptRow]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x].[Id],
	[x].[Name],
	[x].[Age]
FROM
	[OptRow] [x]
WHERE
	[x].[Name] IS NULL

