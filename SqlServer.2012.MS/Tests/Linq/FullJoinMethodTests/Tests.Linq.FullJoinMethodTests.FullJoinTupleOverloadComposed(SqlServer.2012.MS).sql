-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT
			[Item1].[ParentID]
		FROM
			[Parent] [Item1]
		WHERE
			[Item1].[ParentID] < 3
	) [t]
		FULL JOIN (
			SELECT
				[c_1].[ChildID],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 1
		) [t1] ON [t].[ParentID] = [t1].[ParentID]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

