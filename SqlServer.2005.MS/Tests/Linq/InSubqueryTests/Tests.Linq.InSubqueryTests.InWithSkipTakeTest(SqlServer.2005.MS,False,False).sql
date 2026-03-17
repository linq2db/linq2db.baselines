-- SqlServer.2005.MS SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[p].[ParentID],
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[Parent] [p]
			) [t1]
		WHERE
			[t1].[RN] > 100 AND [t1].[RN] <= 200
	)

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

