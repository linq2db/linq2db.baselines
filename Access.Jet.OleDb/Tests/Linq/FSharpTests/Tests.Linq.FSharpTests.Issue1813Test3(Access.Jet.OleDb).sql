-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'name1'

INSERT INTO [Names]
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
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'name2'

INSERT INTO [Names]
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
SET     @Id = 1
DECLARE @Text VarWChar(7) -- String
SET     @Text = 'address'

INSERT INTO [Addresses]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[after_1].[Id],
	[after_1].[Name],
	[arg2].[Id],
	[arg2].[Text]
FROM
	[Names] [after_1]
		LEFT JOIN [Addresses] [arg2] ON ([after_1].[Id] = [arg2].[Id])
ORDER BY
	[after_1].[Id]

