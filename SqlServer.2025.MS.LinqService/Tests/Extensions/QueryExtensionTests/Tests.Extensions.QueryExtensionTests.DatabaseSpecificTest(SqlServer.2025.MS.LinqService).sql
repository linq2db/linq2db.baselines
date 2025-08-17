BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t] WITH (NoLock, NoWait, ReadUncommitted)
OPTION (RECOMPILE)

