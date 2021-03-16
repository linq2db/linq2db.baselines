BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p_2].[c1]
FROM
	(
		SELECT
			[p].[ParentID],
			1 as [c1]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[p_1].[ParentID],
			0 as [c1]
		FROM
			[Parent] [p_1]
		UNION
		SELECT
			[ch].[ParentID],
			0 as [c1]
		FROM
			[Child] [ch]
	) [p_2]

