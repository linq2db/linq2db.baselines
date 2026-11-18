-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t].[ParentID],
	[c_1].[ChildID]
FROM
	(
		SELECT
			[Item1].[ParentID]
		FROM
			[Parent] [Item1]
		WHERE
			[Item1].[ParentID] >= 4
	) [t]
		RIGHT JOIN [Child] [c_1] ON [t].[ParentID] = [c_1].[ParentID]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

