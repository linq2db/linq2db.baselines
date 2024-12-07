BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p_2].[val]
FROM
	(
		SELECT
			[p].[ParentID],
			CAST(1 AS Bit) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[p_1].[ParentID],
			CAST(0 AS Bit) as [val]
		FROM
			[Parent] [p_1]
		UNION
		SELECT
			[ch].[ParentID],
			CAST(0 AS Bit) as [c1]
		FROM
			[Child] [ch]
	) [p_2]

