BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

UPDATE
	[c_1]
SET
	[c_1].[ChildID] = [c_1].[ChildID] * 2
FROM
	[Child] [c_1] WITH (NoLock)
WHERE
	[c_1].[ParentID] < -1111
OPTION (RECOMPILE, FAST 10)

