BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1855Table]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NULL)
	CREATE TABLE [Issue1855Table]
	(
		[Id]                         Int      NOT NULL,
		[SomeDateTimeOffset]         DateTime NOT NULL,
		[SomeNullableDateTimeOffset] DateTime     NULL,

		CONSTRAINT [PK_Issue1855Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset DateTimeOffset
SET     @SomeDateTimeOffset = CAST('2019-08-08T08:08:08.000' AS DATETIME)
DECLARE @SomeNullableDateTimeOffset DateTimeOffset
SET     @SomeNullableDateTimeOffset = CAST('2019-08-08T08:08:08.000' AS DATETIME)

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
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1855Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1855Table]

