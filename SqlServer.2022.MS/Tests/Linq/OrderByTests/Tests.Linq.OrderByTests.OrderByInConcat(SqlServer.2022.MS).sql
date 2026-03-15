-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
UNION ALL
SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Child] [t2]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
UNION ALL
SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Child] [t2]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t3].[ParentID],
	[t3].[ChildID]
FROM
	(
		SELECT
			[t1].[ChildID],
			[t1].[ParentID]
		FROM
			[Child] [t1]
		UNION ALL
		SELECT
			[t2].[ChildID],
			[t2].[ParentID]
		FROM
			[Child] [t2]
	) [t3]
ORDER BY
	[t3].[ChildID]

