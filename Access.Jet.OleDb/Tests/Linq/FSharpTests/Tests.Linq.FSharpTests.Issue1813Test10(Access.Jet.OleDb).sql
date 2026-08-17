-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(7) -- String
SET     @Name = 'address'

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
SET     @Name = 'other'

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
	[after_1].[Name],
	[arg3].[Id],
	[arg3].[Text]
FROM
	[Names] [after_1]
		LEFT JOIN [Addresses] [arg3] ON ([arg3].[Text] = [after_1].[Name] OR [arg3].[Text] IS NULL AND [after_1].[Name] IS NULL)

