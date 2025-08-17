BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
	DateAdd(second, @interval, [r].[SomeDateTimeOffset]) >= @clientSideIn

