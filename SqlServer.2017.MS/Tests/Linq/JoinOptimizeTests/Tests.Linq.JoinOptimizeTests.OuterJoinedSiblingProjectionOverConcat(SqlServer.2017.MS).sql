-- SqlServer.2017.MS SqlServer.2017
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [v].[ParentID] IS NULL THEN NULL
		WHEN [v].[Value1] IS NULL THEN [c_1].[ChildID]
		ELSE NULL
	END
FROM
	[Child] [c_1]
		LEFT JOIN (
			SELECT
				[q].[ParentID],
				[q].[Value1]
			FROM
				[Parent] [q]
			WHERE
				[q].[ParentID] < 3
			UNION ALL
			SELECT
				[p].[ParentID],
				[p].[Value1]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] > 5
		) [v] ON [v].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ParentID] = 1 OR
	[c_1].[ParentID] = 2 OR
	[c_1].[ParentID] = 3 OR
	[c_1].[ParentID] = 6

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [v].[ParentID] IS NULL THEN NULL
		WHEN [v].[Value1] IS NULL THEN [c_1].[ChildID]
		ELSE NULL
	END
FROM
	[Child] [c_1]
		LEFT JOIN (
			SELECT
				[q].[ParentID],
				[q].[Value1]
			FROM
				[Parent] [q]
			WHERE
				[q].[ParentID] < 3
			UNION ALL
			SELECT
				[p].[ParentID],
				[p].[Value1]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] > 5
		) [v] ON [v].[ParentID] >= [c_1].[ParentID] AND [v].[ParentID] <= [c_1].[ParentID]
WHERE
	[c_1].[ParentID] = 1 OR
	[c_1].[ParentID] = 2 OR
	[c_1].[ParentID] = 3 OR
	[c_1].[ParentID] = 6

