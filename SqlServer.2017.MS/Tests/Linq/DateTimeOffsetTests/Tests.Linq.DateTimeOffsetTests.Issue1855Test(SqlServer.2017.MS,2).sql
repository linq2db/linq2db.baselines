-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

