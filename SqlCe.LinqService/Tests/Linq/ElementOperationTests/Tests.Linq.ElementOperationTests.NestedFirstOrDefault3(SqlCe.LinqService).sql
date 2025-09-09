BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT DISTINCT TOP (1)
				[a_Children].[ParentID]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]

