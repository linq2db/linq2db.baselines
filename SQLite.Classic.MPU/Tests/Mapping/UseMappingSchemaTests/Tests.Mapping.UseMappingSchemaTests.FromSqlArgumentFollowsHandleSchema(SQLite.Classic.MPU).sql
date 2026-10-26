-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 101

SELECT
	[r].[Id]
FROM
	(
		SELECT Id, Kind FROM SourceSchemaShape WHERE Kind = @p
	) [r]

