BeforeExecute
-- SqlServer.2014

UPDATE
	[u]
SET
	[u].[ChildID] = [c_1].[ChildID] * 2
FROM
	[Child] [u],
	[Child] [c_1] WITH (NoLock)
WHERE
	[c_1].[ParentID] = [u].[ParentID] AND [c_1].[ChildID] = [u].[ChildID] AND
	[c_1].[ParentID] < -1111
OPTION (RECOMPILE, FAST 10)

