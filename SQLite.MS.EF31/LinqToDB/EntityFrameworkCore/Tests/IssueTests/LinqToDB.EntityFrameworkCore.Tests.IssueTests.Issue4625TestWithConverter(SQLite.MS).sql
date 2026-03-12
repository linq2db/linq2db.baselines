-- SQLite.MS SQLite
DECLARE @DateTimeOffsetWithConverter  -- DateTimeOffset
SET     @DateTimeOffsetWithConverter = 1304956839836121088
DECLARE @DateTimeOffsetNWithConverter  -- DateTimeOffset
SET     @DateTimeOffsetNWithConverter = 1304956839836121088

UPDATE
	[Types]
SET
	[DateTimeOffsetWithConverter] = @DateTimeOffsetWithConverter,
	[DateTimeOffsetNWithConverter] = @DateTimeOffsetNWithConverter
WHERE
	[Types].[Id] = 2



