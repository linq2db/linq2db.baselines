-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 6
DECLARE @Name VarWChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SourceSchemaRow] [t1]
SET
	[t1].[Value] = @Value,
	[t1].[Name] = @Name
WHERE
	[t1].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]
ORDER BY
	[t1].[Id]

