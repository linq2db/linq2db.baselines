BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1855Table]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NULL)
	CREATE TABLE [Issue1855Table]
	(
		[Id]                         Int            NOT NULL,
		[SomeDateTimeOffset]         DateTimeOffset NOT NULL,
		[SomeNullableDateTimeOffset] DateTimeOffset     NULL,

		CONSTRAINT [PK_Issue1855Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset DateTimeOffset
SET     @SomeDateTimeOffset = DATETIMEOFFSETFROMPARTS(2019, 8, 8, 8, 8, 8, 0, 0, 0, 7)
DECLARE @SomeNullableDateTimeOffset DateTimeOffset
SET     @SomeNullableDateTimeOffset = DATETIMEOFFSETFROMPARTS(2019, 8, 8, 8, 8, 8, 0, 0, 0, 7)

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
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset DateTimeOffset
SET     @SomeDateTimeOffset = DATETIMEOFFSETFROMPARTS(2019, 8, 8, 8, 8, 8, 0, 0, 0, 7)

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
-- SqlServer.2014
DECLARE @clientSideIn DateTimeOffset
SET     @clientSideIn = DATETIMEOFFSETFROMPARTS(2019, 8, 8, 8, 8, 18, 0, 0, 0, 7)

SELECT
	[r].[Id],
	[r].[SomeDateTimeOffset],
	[r].[SomeNullableDateTimeOffset]
FROM
	[Issue1855Table] [r]
WHERE
	@clientSideIn <> [r].[SomeNullableDateTimeOffset] OR
	[r].[SomeNullableDateTimeOffset] IS NULL

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1855Table]

