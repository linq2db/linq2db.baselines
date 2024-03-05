BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[u]
SET
	[u].[ChildID] = [c_1].[ChildID] * 2
FROM
	[Child] [u],
	[Child] [c_1] WITH (NoLock)
WHERE
	[c_1].[ParentID] < -1111 AND [c_1].[ParentID] = [u].[ParentID] AND
	[c_1].[ChildID] = [u].[ChildID]
OPTION (RECOMPILE, FAST 10)

