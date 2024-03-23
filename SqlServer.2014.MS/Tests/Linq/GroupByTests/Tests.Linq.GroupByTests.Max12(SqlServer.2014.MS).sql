BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	MAX(IIF([t1].[ChildID] > 20, 1, 0))
FROM
	[Child] [t1]

