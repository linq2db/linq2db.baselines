BeforeExecute
-- SqlServer.2012

SELECT
	IIF([t1].[ChildID] = 21, 1, 0),
	[t1].[ChildID],
	IIF([t1].[ChildID] = 11, 1, 0)
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] = 11 OR [t1].[ChildID] = 21

