﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Users]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Users]', N'U') IS NULL)
	CREATE TABLE [Users]
	(
		[Id]      Int NOT NULL,
		[Version] Int     NULL,

		CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [Users]
(
	[Id],
	[Version]
)
VALUES
(1,0)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @maxVersion Int -- Int32
SET     @maxVersion = 1

SELECT
	[u].[Id]
FROM
	[Users] [u]
WHERE
	[u].[Version] < @maxVersion

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Users]

