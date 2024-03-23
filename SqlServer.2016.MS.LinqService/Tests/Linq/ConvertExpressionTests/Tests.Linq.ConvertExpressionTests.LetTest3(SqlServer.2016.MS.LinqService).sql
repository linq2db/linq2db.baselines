BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

