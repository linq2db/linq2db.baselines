-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John Doe'
DECLARE @Id_1 NVarChar(4000) -- String
SET     @Id_1 = N'1'
DECLARE @Source NVarChar(4000) -- String
SET     @Source = N'unknown'

INSERT INTO [Issue3581Table]
(
	[Id],
	[Name],
	[ExternalId],
	[Source]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Name],
	INSERTED.[ExternalId],
	INSERTED.[Source]
VALUES
(
	@Id,
	@Name,
	@Id_1,
	@Source
)

