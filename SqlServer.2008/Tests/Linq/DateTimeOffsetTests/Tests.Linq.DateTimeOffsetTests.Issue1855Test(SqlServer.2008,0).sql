BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1855Table]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NULL)
	CREATE TABLE [Issue1855Table]
	(
		[Id]                         Int            NOT NULL,
		[SomeDateTimeOffset]         DateTimeOffset NOT NULL,
		[SomeNullableDateTimeOffset] DateTimeOffset     NULL,

		CONSTRAINT [PK_Issue1855Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset DateTimeOffset
SET     @SomeDateTimeOffset = CAST('2019-08-08T08:08:08.0000000+00:00' AS DATETIMEOFFSET)
DECLARE @SomeNullableDateTimeOffset DateTimeOffset
SET     @SomeNullableDateTimeOffset = CAST('2019-08-08T08:08:08.0000000+00:00' AS DATETIMEOFFSET)

INSERT INTO [Issue1855Table]
(
	[Id],
	[SomeDateTimeOffset],
	[SomeNullableDateTimeOffset]
)
VALUES
(
	@Id,
	@SomeDateTimeOffset,
	@SomeNullableDateTimeOffset
)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset DateTimeOffset
SET     @SomeDateTimeOffset = CAST('2019-08-08T08:08:08.0000000+00:00' AS DATETIMEOFFSET)

INSERT INTO [Issue1855Table]
(
	[Id],
	[SomeDateTimeOffset]
)
VALUES
(
	@Id,
	@SomeDateTimeOffset
)

BeforeExecute
-- SqlServer.2008
DECLARE @interval Int -- Int32
SET     @interval = 10
DECLARE @clientSideIn DateTimeOffset
SET     @clientSideIn = CAST('2019-08-08T08:08:18.0000000+00:00' AS DATETIMEOFFSET)

SELECT
	[r].[Id],
	[r].[SomeDateTimeOffset],
	[r].[SomeNullableDateTimeOffset]
FROM
	[Issue1855Table] [r]
WHERE
	DateAdd(second, @interval, [r].[SomeDateTimeOffset]) >= @clientSideIn AND
	DateAdd(second, @interval, [r].[SomeDateTimeOffset]) IS NOT NULL

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1855Table]

