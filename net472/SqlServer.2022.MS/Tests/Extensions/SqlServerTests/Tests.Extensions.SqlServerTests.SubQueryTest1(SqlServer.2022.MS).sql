BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c1] WITH (NoLock)
		WHERE
			[c1].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Child] [c_1]

