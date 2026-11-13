-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
	) [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 100

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[t1].[ChildID]
		FROM
			(
				SELECT
					[c_1].[ChildID]
				FROM
					[Child] [c_1]
				LIMIT @take
			) [t1]
	) [t2]

