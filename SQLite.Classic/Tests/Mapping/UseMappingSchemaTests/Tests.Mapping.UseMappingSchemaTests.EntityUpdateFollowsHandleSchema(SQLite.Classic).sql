-- SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[SourceSchemaRow]
SET
	[Value] = @Value,
	[Name] = @Name
WHERE
	[SourceSchemaRow].[Id] = @Id

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]
LIMIT 2

