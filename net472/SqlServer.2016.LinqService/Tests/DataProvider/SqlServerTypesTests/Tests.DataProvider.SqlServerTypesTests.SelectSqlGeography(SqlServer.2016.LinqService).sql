BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Issue1836]', N'U') IS NOT NULL)
	DROP TABLE [Issue1836]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Issue1836]', N'U') IS NULL)
	CREATE TABLE [Issue1836]
	(
		[Id]           Int       NOT NULL,
		[HomeLocation] Geography     NULL,

		CONSTRAINT [PK_Issue1836] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @HomeLocation NVarChar(4000) -- String
SET     @HomeLocation = NULL

INSERT INTO [Issue1836]
(
	[Id],
	[HomeLocation]
)
VALUES
(
	@Id,
	@HomeLocation
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @HomeLocation geography -- Udt -- Object
SET     @HomeLocation = LINESTRING (-122.36 47.656, -122.343 47.656)

INSERT INTO [Issue1836]
(
	[Id],
	[HomeLocation]
)
VALUES
(
	@Id,
	@HomeLocation
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[HomeLocation]
FROM
	[Issue1836] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Issue1836]', N'U') IS NOT NULL)
	DROP TABLE [Issue1836]

