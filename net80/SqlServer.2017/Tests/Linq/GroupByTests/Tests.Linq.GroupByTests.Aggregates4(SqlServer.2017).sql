BeforeExecute
-- SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [_]
		WHERE
			[t1].[ParentID] = [_].[ParentID] AND [_].[ChildID] > 30
	),
	(
		SELECT
			Sum([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] > 30
	)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

