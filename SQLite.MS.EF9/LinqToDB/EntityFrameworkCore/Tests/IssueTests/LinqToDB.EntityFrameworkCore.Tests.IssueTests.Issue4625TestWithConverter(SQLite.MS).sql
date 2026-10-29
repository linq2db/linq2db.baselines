-- SQLite.MS SQLite
DECLARE @DateTimeOffsetWithConverter Integer -- Int64
SET     @DateTimeOffsetWithConverter = 1304956839836121088
DECLARE @DateTimeOffsetNWithConverter Integer -- Int64
SET     @DateTimeOffsetNWithConverter = 1304956839836121088

UPDATE
	[Types]
SET
	[DateTimeOffsetWithConverter] = @DateTimeOffsetWithConverter,
	[DateTimeOffsetNWithConverter] = @DateTimeOffsetNWithConverter
WHERE
	[Types].[Id] = 2



