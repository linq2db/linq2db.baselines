-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[r].[Id],
	[r].[Name]
FROM
	[ConvertTable] [r]
WHERE
	[r].[Id] = @id

