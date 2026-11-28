-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 6
DECLARE @Name UniVarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SourceSchemaRow]
SET
	[Value] = @Value,
	[Name] = @Name
FROM
	[SourceSchemaRow] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
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
END

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]
ORDER BY
	[t1].[Id]

