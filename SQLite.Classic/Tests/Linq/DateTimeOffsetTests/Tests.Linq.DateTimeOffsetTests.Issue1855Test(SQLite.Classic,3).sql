-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset VarChar(25) -- AnsiString
SET     @SomeDateTimeOffset = '2019-08-08 08:08:08+00:00'
DECLARE @SomeNullableDateTimeOffset VarChar(25) -- AnsiString
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

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset VarChar(25) -- AnsiString
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

-- SQLite.Classic SQLite
DECLARE @clientSideIn VarChar(25) -- AnsiString
SET     @clientSideIn = '2019-08-08 08:08:18+00:00'

SELECT
	[r].[Id],
	[r].[SomeDateTimeOffset],
	[r].[SomeNullableDateTimeOffset]
FROM
	[Issue1855Table] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @clientSideIn) <> strftime('%Y-%m-%d %H:%M:%f', [r].[SomeDateTimeOffset])

