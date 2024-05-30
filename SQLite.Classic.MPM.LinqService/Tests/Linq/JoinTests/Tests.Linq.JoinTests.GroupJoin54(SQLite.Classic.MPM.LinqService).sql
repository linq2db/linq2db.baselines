BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [ch_1]
		WHERE
			[t2].[ParentID] = [ch_1].[ParentID]
	),
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [t2]
		INNER JOIN (
			SELECT
				[ch].[ParentID],
				[ch].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [ch].[ParentID] ORDER BY [ch].[ParentID]) as [rn]
			FROM
				[Child] [ch]
		) [t1] ON [t2].[ParentID] = [t1].[ParentID] AND [t1].[rn] <= 1
WHERE
	[t2].[ParentID] = 1

