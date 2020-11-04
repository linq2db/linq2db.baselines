BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue1836]', N'U') IS NULL)
	CREATE TABLE [Issue1836]
	(
		[Id]           Int       NOT NULL,
		[HomeLocation] Geography     NULL,

		CONSTRAINT [PK_Issue1836] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017
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
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[HomeLocation]
FROM
	[Issue1836] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue1836]', N'U') IS NOT NULL)
	DROP TABLE [Issue1836]

