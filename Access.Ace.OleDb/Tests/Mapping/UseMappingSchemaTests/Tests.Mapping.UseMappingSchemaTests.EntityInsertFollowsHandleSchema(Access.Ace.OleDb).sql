-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 5
DECLARE @Name VarWChar(1) -- String
SET     @Name = 'a'

INSERT INTO [SourceSchemaRow]
(
	[Id],
	[Value],
	[Name]
)
VALUES
(
	@Id,
	@Value,
	@Name
)

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

