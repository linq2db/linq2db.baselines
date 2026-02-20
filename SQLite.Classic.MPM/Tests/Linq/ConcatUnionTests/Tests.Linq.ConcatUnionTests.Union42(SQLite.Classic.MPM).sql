-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p_1].[val]
FROM
	(
		SELECT
			[p].[ParentID] as [id],
			CAST(1 AS BitBoolean) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[ch].[ParentID] as [id],
			CAST(0 AS BitBoolean) as [val]
		FROM
			[Child] [ch]
	) [p_1]

