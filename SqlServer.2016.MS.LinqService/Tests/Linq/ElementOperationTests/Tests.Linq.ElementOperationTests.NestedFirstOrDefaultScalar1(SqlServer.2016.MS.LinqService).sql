BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	(
		SELECT TOP (1)
			[t1].[ChildID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

