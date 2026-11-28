-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Integer -- Int32
SET     @Age = 14

INSERT INTO [SkipOnInsertTable]
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
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertTable] [t]
WHERE
	[t].[Id] = 1

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Integer -- Int32
SET     @Age = 15

INSERT INTO [SkipOnInsertTable]
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
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertTable] [t]
WHERE
	[t].[Id] = 2

