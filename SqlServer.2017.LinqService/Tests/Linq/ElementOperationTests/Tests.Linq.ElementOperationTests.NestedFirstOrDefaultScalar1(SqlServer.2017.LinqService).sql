BeforeExecute
-- SqlServer.2017

SELECT
	(
		SELECT TOP (1)
			[t1].[ChildID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

