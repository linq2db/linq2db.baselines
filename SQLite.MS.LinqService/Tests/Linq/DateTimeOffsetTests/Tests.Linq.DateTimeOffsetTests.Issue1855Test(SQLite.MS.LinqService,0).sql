BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1855Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1855Table]
(
	[Id]                         INTEGER        NOT NULL,
	[SomeDateTimeOffset]         DateTimeOffset NOT NULL,
	[SomeNullableDateTimeOffset] DateTimeOffset     NULL,

	CONSTRAINT [PK_Issue1855Table] PRIMARY KEY ([Id])
)

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

DROP TABLE IF EXISTS [Issue1855Table]

