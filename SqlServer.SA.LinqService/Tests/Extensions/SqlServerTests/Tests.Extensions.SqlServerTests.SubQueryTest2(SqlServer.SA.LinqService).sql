BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	(
		SELECT TOP (1)
			[c1].[ChildID]
		FROM
			[Child] [c1] WITH (NoLock)
		WHERE
			[c1].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Child] [c_1]

