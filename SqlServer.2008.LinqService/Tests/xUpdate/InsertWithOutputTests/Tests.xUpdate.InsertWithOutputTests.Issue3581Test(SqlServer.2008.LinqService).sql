BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3581Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3581Table]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3581Table]', N'U') IS NULL)
	CREATE TABLE [Issue3581Table]
	(
		[Id]         Int            NOT NULL,
		[Name]       NVarChar(4000)     NULL,
		[ExternalId] NVarChar(4000)     NULL,
		[Source]     NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue3581Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008
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
	[INSERTED].[Id],
	[INSERTED].[Name],
	[INSERTED].[ExternalId],
	[INSERTED].[Source]
VALUES
(
	@Id,
	@Name,
	@Id_1,
	@Source
)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3581Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3581Table]

