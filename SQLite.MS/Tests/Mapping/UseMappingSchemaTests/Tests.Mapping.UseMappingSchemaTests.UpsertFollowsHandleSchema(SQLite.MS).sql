-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'

INSERT INTO [SourceSchemaRow] AS [t1]
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
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = @Value,
	[Name] = @Name

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]
ORDER BY
	[t1].[Id]

