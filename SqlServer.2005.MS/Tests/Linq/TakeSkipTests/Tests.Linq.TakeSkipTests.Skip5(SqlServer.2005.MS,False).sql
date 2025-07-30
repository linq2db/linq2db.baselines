BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t1].[ChildID] DESC, ([t1].[ParentID] + 1)) as [RN]
		FROM
			[Child] [t1]
	) [t2]
WHERE
	[t2].[RN] > 3
ORDER BY
	[t2].[ChildID] DESC

