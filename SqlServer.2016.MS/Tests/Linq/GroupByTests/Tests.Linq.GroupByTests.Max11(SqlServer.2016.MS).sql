-- SqlServer.2016.MS SqlServer.2016

SELECT
	MAX(IIF([t1].[ChildID] > 20, 1, 0))
FROM
	[Child] [t1]

