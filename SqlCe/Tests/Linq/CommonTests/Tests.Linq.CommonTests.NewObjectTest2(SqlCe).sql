BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID] as [ID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [j] ON [p].[ParentID] = [j].[ParentID]
WHERE
	[p].[ParentID] = 1

