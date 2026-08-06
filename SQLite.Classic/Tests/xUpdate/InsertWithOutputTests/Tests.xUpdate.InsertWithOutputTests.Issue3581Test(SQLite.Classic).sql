-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'John Doe'
DECLARE @Id_1 NVarChar(1) -- String
SET     @Id_1 = '1'
DECLARE @Source NVarChar(7) -- String
SET     @Source = 'unknown'

INSERT INTO [Issue3581Table]
(
	[Id],
	[Name],
	[ExternalId],
	[Source]
)
VALUES
(
	@Id,
	@Name,
	@Id_1,
	@Source
)
RETURNING
	[Issue3581Table].[Id],
	[Issue3581Table].[Name],
	[Issue3581Table].[ExternalId],
	[Issue3581Table].[Source]

