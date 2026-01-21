-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[c_1].[ChildID],
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] < 4
	) [t1]
ORDER BY
	[t1].[ChildID]

-- SqlServer.2019.MS SqlServer.2019

SELECT DISTINCT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] < 4

