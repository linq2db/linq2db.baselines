BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Users]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Users]', N'U') IS NULL)
	CREATE TABLE [Users]
	(
		[Id]      Int NOT NULL,
		[Version] Int     NULL,

		CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Users]
(
	[Id],
	[Version]
)
VALUES
(1,0)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @maxVersion Int -- Int32
SET     @maxVersion = 1

SELECT
	[u].[Id]
FROM
	[Users] [u]
WHERE
	[u].[Version] < @maxVersion AND [u].[Version] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Users]

