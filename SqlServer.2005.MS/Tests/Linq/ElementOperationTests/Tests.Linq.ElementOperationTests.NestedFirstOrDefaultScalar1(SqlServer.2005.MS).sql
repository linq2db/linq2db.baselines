BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT TOP (1)
			[t1].[ChildID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

