BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	(
		SELECT TOP (1)
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

