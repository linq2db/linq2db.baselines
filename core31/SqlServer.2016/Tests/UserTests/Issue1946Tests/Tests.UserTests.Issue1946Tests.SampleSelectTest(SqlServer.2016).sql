BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [Users]
(
	[Id]      Int NOT NULL,
	[Version] Int     NULL,

	CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [Users]
(
	[Id],
	[Version]
)
VALUES
(1,0)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @maxVersion Int -- Int32
SET     @maxVersion = 1

SELECT
	[u].[Id]
FROM
	[Users] [u]
WHERE
	[u].[Version] < @maxVersion

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [Users]

