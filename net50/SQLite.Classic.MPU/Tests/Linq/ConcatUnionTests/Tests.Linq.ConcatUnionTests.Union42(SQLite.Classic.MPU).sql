BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			[p].[ParentID],
			1 as [c1]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[ch].[ParentID],
			0 as [c1]
		FROM
			[Child] [ch]
	) [p_1]

