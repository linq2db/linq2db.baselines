-- SqlServer.2017.MS SqlServer.2017

SELECT
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

