-- SqlServer.SA.MS SqlServer.2019

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

