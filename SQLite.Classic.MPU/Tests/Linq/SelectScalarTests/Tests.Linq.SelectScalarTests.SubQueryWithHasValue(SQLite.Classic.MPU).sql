BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	(
		SELECT
			CASE
				WHEN [r].[Value1] IS NOT NULL THEN 1
				ELSE 0
			END
		FROM
			[Parent] [r]
		LIMIT 1
	) = 1

