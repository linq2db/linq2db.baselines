BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN [q].[ParentID] IS NOT NULL THEN [q].[ParentID]
		ELSE 0
	END
FROM
	[Parent] [q]

