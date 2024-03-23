BeforeExecute
-- SqlCe

SELECT
	[t].[ParentID] + [p].[ParentID] as [ID]
FROM
	[Child] [t]
		INNER JOIN [Parent] [p] ON [t].[ParentID] = [p].[ParentID]
WHERE
	[t].[ParentID] + [p].[ParentID] > 2

