-- SqlServer.2008.MS SqlServer.2008

SELECT
	[a].[ParentID]
FROM
	[Parent] [a]
		INNER JOIN [Child] [t] ON [a].[ParentID] IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[GrandChild] [c_1]
			WHERE
				[c_1].[ChildID] = [t].[ChildID]
		)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

