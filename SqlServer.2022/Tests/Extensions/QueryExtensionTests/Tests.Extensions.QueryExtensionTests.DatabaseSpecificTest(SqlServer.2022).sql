-- SqlServer.2022

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t] WITH (NoLock, NoWait, ReadUncommitted)
OPTION (RECOMPILE)

