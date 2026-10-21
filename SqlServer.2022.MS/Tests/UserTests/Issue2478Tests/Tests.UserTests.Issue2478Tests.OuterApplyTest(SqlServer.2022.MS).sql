-- SqlServer.2022.MS SqlServer.2022
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

-- SqlServer.2022.MS SqlServer.2022
SELECT
	COUNT(*)
FROM
	[Parent] [t1]

-- SqlServer.2022.MS SqlServer.2022
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

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

