BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	(([_].[PersonID] = @id OR [_].[PersonID] <= @id) OR [_].[PersonID] = @id)

