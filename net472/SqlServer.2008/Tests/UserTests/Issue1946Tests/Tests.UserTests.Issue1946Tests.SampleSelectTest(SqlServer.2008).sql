BeforeExecute
-- SqlServer.2008

CREATE TABLE [Users]
(
	[Id]      Int NOT NULL,
	[Version] Int     NULL,

	CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Users]
(
	[Id],
	[Version]
)
VALUES
(1,0)

BeforeExecute
-- SqlServer.2008
DECLARE @maxVersion Int -- Int32
SET     @maxVersion = 1

SELECT 
	[u].[Id]
FROM
	[Users] [u]
WHERE
	[u].[Version] < @maxVersion

BeforeExecute
-- SqlServer.2008

DROP TABLE [Users]

