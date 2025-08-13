BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset  -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'
DECLARE @SomeNullableDateTimeOffset  -- DateTimeOffset
SET     @SomeNullableDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset  -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

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
-- SQLite.MS SQLite
DECLARE @clientSideIn  -- DateTimeOffset
SET     @clientSideIn = '2019-08-08T08:08:18.0000000+00:00'

SELECT
	[r].[Id],
	[r].[SomeDateTimeOffset],
	[r].[SomeNullableDateTimeOffset]
FROM
	[Issue1855Table] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @clientSideIn) <> strftime('%Y-%m-%d %H:%M:%f', [r].[SomeDateTimeOffset])

