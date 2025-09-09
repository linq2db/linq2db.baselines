BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

