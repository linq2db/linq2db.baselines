-- SQLite.MS SQLite
DECLARE @DateTimeOffset  -- DateTimeOffset
SET     @DateTimeOffset = '2020-02-29T17:54:55.1231234+00:00'
DECLARE @DateTimeOffsetN  -- DateTimeOffset
SET     @DateTimeOffsetN = '2020-02-29T17:54:55.1231234+00:00'

UPDATE
	[Types]
SET
	[DateTimeOffset] = @DateTimeOffset,
	[DateTimeOffsetN] = @DateTimeOffsetN
WHERE
	[Types].[Id] = 2



