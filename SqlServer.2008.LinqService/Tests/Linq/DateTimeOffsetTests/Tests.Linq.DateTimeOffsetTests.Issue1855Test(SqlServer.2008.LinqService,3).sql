BeforeExecute
-- SqlServer.2008 (asynchronously)
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
-- SqlServer.2008 (asynchronously)
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
-- SqlServer.2008 (asynchronously)
DECLARE @clientSideIn DateTimeOffset
SET     @clientSideIn = CAST('2019-08-08T08:08:18.0000000+00:00' AS DATETIMEOFFSET)

SELECT
	[r].[Id],
	[r].[SomeDateTimeOffset],
	[r].[SomeNullableDateTimeOffset]
FROM
	[Issue1855Table] [r]
WHERE
	@clientSideIn <> [r].[SomeDateTimeOffset]

