BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ParentID] = [p].[ParentID] AND [c_3].[ChildID] > -100
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_4]
		WHERE
			[c_4].[ParentID] = [p].[ParentID] AND [c_4].[ChildID] > -100
	),
	[t1].[ParentID],
	[t1].[ChildID],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [c_1].[ParentID] ORDER BY [c_1].[ChildID]) as [rn]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ChildID] > -100 AND [c_1].[ParentID] > 0
		) [t1] ON [t1].[ParentID] = [p].[ParentID] AND [t1].[rn] <= 1
		LEFT JOIN (
			SELECT
				[c_2].[ParentID],
				[c_2].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [c_2].[ParentID] ORDER BY [c_2].[ChildID]) as [rn]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ChildID] > -100
		) [t2] ON [t2].[ParentID] = [p].[ParentID] AND [t2].[rn] <= 1

