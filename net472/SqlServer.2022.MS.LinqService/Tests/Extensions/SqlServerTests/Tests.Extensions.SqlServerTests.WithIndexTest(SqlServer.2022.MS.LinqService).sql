BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex), NoLock)

