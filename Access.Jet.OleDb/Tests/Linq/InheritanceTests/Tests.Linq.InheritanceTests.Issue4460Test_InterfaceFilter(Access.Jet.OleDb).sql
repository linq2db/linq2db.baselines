-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb

SELECT
	[e].[Code],
	[e].[Id],
	[e].[Age],
	[e].[Name]
FROM
	[Base] [e]
WHERE
	[e].[Code] <> 'Child' OR [e].[Code] IS NULL

