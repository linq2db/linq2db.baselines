-- SqlServer.2017.MS SqlServer.2017
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*)
FROM
	[Parent] [t1]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

