BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'John Doe'
DECLARE @ExternalId_Id NVarChar(1) -- String
SET     @ExternalId_Id = '1'
DECLARE @ExternalId_Source NVarChar(7) -- String
SET     @ExternalId_Source = 'unknown'

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
	@ExternalId_Id,
	@ExternalId_Source
)
RETURNING
	[Issue3581Table].[Id],
	[Issue3581Table].[Name],
	[Issue3581Table].[ExternalId],
	[Issue3581Table].[Source]

