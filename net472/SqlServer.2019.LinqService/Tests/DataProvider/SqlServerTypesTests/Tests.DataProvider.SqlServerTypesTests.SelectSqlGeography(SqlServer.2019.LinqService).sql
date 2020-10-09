BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Issue1836]
(
	[Id]           Int       NOT NULL,
	[HomeLocation] Geography     NULL,

	CONSTRAINT [PK_Issue1836] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
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
-- SqlServer.2019 SqlServer.2017
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
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t1].[Id], 
	[t1].[HomeLocation]
FROM
	[Issue1836] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Issue1836]

