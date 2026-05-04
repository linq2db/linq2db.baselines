-- SQLite.MS SQLite
DECLARE @DateTimeOffset  -- DateTimeOffset
SET     @DateTimeOffset = '2020-02-29 17:54:55.123'
DECLARE @DateTimeOffsetN  -- DateTimeOffset
SET     @DateTimeOffsetN = '2020-02-29 17:54:55.123'

UPDATE
	[Types]
SET
	[DateTimeOffset] = @DateTimeOffset,
	[DateTimeOffsetN] = @DateTimeOffsetN
WHERE
	[Types].[Id] = 2



