BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1836]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue1836]', N'U') IS NULL)
	CREATE TABLE [Issue1836]
	(
		[Id]           Int       NOT NULL,
		[HomeLocation] Geography     NULL,

		CONSTRAINT [PK_Issue1836] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p1 geography -- Udt -- Object
SET     @p1 = LINESTRING (-122.36 47.656, -122.343 47.656)

INSERT INTO [Issue1836]
(
	[Id],
	[HomeLocation]
)
VALUES
(1,NULL),
(2,@p1)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[HomeLocation]
FROM
	[Issue1836] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1836]

