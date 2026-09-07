-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @minId  -- Int32
SET     @minId = 1

SELECT
	[r].[Id],
	[r].[Hidden]
FROM
	[FilteredRow] [r]
WHERE
	[r].[Id] > @minId

