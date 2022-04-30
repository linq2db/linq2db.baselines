BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

UPDATE
	[Child]
SET
	[Child].[ChildID] = [c_1].[ChildID] * 2
FROM
	[Child] [c_1] WITH (NoLock)
WHERE
	[c_1].[ParentID] < -1111
OPTION (RECOMPILE, FAST 10)

