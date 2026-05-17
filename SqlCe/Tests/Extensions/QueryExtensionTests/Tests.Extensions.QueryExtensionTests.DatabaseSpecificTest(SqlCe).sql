-- SqlCe

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t] WITH (NoLock)

