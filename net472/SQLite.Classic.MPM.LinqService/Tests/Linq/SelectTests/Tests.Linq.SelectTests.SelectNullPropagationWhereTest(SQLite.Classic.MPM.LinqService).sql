BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1],
	[p].[Value1_1]
FROM
	(
		SELECT
			CASE
				WHEN ([q].[ParentID] IS NOT NULL OR [q].[Value1] IS NOT NULL)
					THEN [q].[ParentID]
				ELSE NULL
			END as [c1],
			[q].[Value1],
			[a_Parent].[Value1] as [Value1_1],
			[q].[ParentID]
		FROM
			[Parent] [q]
				INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [q].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
	) [p]
WHERE
	(([p].[c1] > 0 OR [p].[Value1] > 0) OR [p].[Value1_1] > 0)

