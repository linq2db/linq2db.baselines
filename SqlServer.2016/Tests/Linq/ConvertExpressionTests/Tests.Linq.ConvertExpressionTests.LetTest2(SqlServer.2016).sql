BeforeExecute
-- SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
WHERE
	[t1].[ParentID] IS NOT NULL

