BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Users]', N'U') IS NOT NULL)
	DROP TABLE [Users]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Users]', N'U') IS NULL)
	CREATE TABLE [Users]
	(
		[Id]      Int NOT NULL,
		[Version] Int     NULL,

		CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Users]
(
	[Id],
	[Version]
)
SELECT 1,0

BeforeExecute
-- SqlServer.2005
DECLARE @maxVersion Int -- Int32
SET     @maxVersion = 1

SELECT
	[u].[Id]
FROM
	[Users] [u]
WHERE
	[u].[Version] < @maxVersion AND [u].[Version] IS NOT NULL

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Users]', N'U') IS NOT NULL)
	DROP TABLE [Users]

