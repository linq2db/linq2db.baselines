BeforeExecute
-- SQLite.MS SQLite
DECLARE @r3  -- Int32
SET     @r3 = 1

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Three]) = ([i].[One], [i].[One] * 2, @r3)

