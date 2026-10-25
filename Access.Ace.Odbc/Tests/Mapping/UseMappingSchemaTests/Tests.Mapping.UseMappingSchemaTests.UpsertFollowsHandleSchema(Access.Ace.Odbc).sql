-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SourceSchemaRow] [t1]
SET
	[t1].[Value] = ?,
	[t1].[Name] = ?
WHERE
	[t1].[Id] = ?

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]
ORDER BY
	[t1].[Id]

