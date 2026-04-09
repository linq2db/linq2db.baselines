-- SqlCe

SELECT
	[t].[ParentID] + [p].[ParentID] as [c1]
FROM
	[Child] [t]
		INNER JOIN [Parent] [p] ON [t].[ParentID] = [p].[ParentID]
WHERE
	[t].[ParentID] + [p].[ParentID] > 2

