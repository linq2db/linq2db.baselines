-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset  -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08 08:08:08+00:00'
DECLARE @SomeNullableDateTimeOffset  -- DateTimeOffset
SET     @SomeNullableDateTimeOffset = '2019-08-08 08:08:08+00:00'

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

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset  -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08 08:08:08+00:00'

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

-- SQLite.MS SQLite
DECLARE @interval  -- Int32
SET     @interval = 10
DECLARE @clientSideIn  -- DateTimeOffset
SET     @clientSideIn = '2019-08-08 08:08:18+00:00'

SELECT
	[r].[Id],
	[r].[SomeDateTimeOffset],
	[r].[SomeNullableDateTimeOffset]
FROM
	[Issue1855Table] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', CASE
		WHEN Substr([r].[SomeNullableDateTimeOffset], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[SomeNullableDateTimeOffset], 1, Length([r].[SomeNullableDateTimeOffset]) - 6), CAST(@interval AS NVarChar(11)) || ' Second') || Substr([r].[SomeNullableDateTimeOffset], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[SomeNullableDateTimeOffset], CAST(@interval AS NVarChar(11)) || ' Second') || '+00:00'
	END) >= strftime('%Y-%m-%d %H:%M:%f', @clientSideIn)

