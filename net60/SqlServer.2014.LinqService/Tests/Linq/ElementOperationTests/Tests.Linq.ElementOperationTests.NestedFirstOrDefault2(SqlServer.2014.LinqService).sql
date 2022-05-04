BeforeExecute
-- SqlServer.2014

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				[Child] [t1]
			WHERE
				[p].[ParentID] = [t1].[ParentID]
			ORDER BY
				[t1].[ChildID]
		) [t2]

