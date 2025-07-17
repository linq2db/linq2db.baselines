-- SQLite.MS SQLite
DECLARE @DateTimeOffsetWithConverter  -- Int64
SET     @DateTimeOffsetWithConverter = 1304956839836121088
DECLARE @DateTimeOffsetNWithConverter  -- Int64
SET     @DateTimeOffsetNWithConverter = '2020-02-29T17:54:55.1231234+00:00'

UPDATE
	[Types]
SET
	[DateTimeOffsetWithConverter] = @DateTimeOffsetWithConverter,
	[DateTimeOffsetNWithConverter] = @DateTimeOffsetNWithConverter
WHERE
	[Types].[Id] = 2



