-- SqlServer.2022.MS SqlServer.2022

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[GrandChildID]
FROM
	[GrandChild] [c_1]
WHERE
	[c_1].[ParentID] IS NOT NULL AND EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[c_1].[ParentID] = [p].[Value1]
	)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

