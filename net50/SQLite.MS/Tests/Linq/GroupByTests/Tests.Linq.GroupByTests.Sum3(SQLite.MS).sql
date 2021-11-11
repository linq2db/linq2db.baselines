BeforeExecute
-- SQLite.MS SQLite

SELECT
	(
		SELECT
			Sum([p].[ChildID])
		FROM
			[Child] [p]
		WHERE
			[a_Parent].[ParentID] = [p].[ParentID]
	)
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
GROUP BY
	[a_Parent].[ParentID],
	[a_Parent].[Value1]

