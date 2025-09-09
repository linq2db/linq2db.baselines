BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[a_Children].[ParentID] + 1 as [c1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
WHERE
	[a_Children].[ParentID] > 0

