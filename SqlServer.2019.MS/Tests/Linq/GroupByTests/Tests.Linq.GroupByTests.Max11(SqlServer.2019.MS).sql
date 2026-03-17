-- SqlServer.2019.MS SqlServer.2019

SELECT
	MAX(IIF([t1].[ChildID] > 20, 1, 0))
FROM
	[Child] [t1]

