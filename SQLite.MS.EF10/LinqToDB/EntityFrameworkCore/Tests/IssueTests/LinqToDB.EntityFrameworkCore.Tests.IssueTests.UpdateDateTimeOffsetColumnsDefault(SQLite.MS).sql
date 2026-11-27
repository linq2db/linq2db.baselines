-- SQLite.MS SQLite
DECLARE @DateTimeOffset Text -- DateTimeOffset
SET     @DateTimeOffset = '2020-02-29 17:54:55.123+00:00'
DECLARE @DateTimeOffsetN Text -- DateTimeOffset
SET     @DateTimeOffsetN = '2020-02-29 17:54:55.123+00:00'

UPDATE
	[Types]
SET
	[DateTimeOffset] = @DateTimeOffset,
	[DateTimeOffsetN] = @DateTimeOffsetN
WHERE
	[Types].[Id] = 2



