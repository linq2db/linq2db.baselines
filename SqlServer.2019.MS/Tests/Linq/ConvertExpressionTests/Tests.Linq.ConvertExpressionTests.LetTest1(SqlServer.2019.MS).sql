-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[cond]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID] as [cond]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
WHERE
	[t1].[cond] IS NOT NULL

