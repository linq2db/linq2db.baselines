BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	Length([p].[FirstName]) + @p
FROM
	[Person] [p]

