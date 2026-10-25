-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 5
DECLARE @Name UniVarChar(1) -- String
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

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

