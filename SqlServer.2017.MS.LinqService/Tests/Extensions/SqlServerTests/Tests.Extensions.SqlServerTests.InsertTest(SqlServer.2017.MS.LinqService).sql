BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [Child]
(
	[ChildID]
)
SELECT
	[c_1].[ChildID] * 2
FROM
	[Child] [c_1] WITH (NoLock)
WHERE
	[c_1].[ParentID] < -1111
OPTION (RECOMPILE, FAST 10)

