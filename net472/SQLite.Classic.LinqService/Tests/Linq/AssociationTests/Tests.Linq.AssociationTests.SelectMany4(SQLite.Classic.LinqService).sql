BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_Parent_1].[ParentID]
FROM
	(
		SELECT
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
		FROM
			[Child] [t1]
				LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
		HAVING
			Count(*) > 2
	) [cp]
		INNER JOIN [Child] [c_1] ON ([cp].[ParentID] = [a_Parent_1].[ParentID] AND ([cp].[Value1] = [a_Parent_1].[Value1] OR [cp].[Value1] IS NULL AND [a_Parent_1].[Value1] IS NULL))
			LEFT JOIN [Parent] [a_Parent_1] ON [c_1].[ParentID] = [a_Parent_1].[ParentID]

