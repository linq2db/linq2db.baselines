BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	(
		SELECT
			Sum([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[t].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1 AND
			[c_1].[ParentID] < 10
	)
FROM
	[Parent] [t]

