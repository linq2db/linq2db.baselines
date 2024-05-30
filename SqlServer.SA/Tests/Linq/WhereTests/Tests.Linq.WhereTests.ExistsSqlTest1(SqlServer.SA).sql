BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] + 100 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

