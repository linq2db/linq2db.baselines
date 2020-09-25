BeforeExecute
-- SqlServer.2005

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
	[u].[Version] < @maxVersion

BeforeExecute
-- SqlServer.2005

DROP TABLE [Users]

