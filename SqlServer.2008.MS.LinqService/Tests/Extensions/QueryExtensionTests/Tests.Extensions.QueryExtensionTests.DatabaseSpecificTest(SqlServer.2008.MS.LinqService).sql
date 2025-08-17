BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t] WITH (NoLock, NoWait, ReadUncommitted)
OPTION (RECOMPILE)

