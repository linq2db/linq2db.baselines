BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1855Table]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NULL)
	CREATE TABLE [Issue1855Table]
	(
		[Id]                         Int            NOT NULL,
		[SomeDateTimeOffset]         DateTimeOffset NOT NULL,
		[SomeNullableDateTimeOffset] DateTimeOffset     NULL,

		CONSTRAINT [PK_Issue1855Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019
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
-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @interval Int -- Int32
SET     @interval = 10
DECLARE @clientSideIn DateTimeOffset
SET     @clientSideIn = DATETIMEOFFSETFROMPARTS(2019, 8, 8, 8, 8, 18, 0, 0, 0, 7)

SELECT
	[r].[Id],
	[r].[SomeDateTimeOffset],
	[r].[SomeNullableDateTimeOffset]
FROM
	[Issue1855Table] [r]
WHERE
	[r].[Id] = @id AND DateAdd(second, @interval, [r].[SomeDateTimeOffset]) >= @clientSideIn

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1855Table]

