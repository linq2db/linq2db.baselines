BeforeExecute
-- SqlServer.2017

SELECT
	(
		SELECT
			Max([_].[ParentID])
		FROM
			[Child] [_]
		WHERE
			[p].[ParentID] = [_].[ParentID] AND [_].[ParentID] < 0
	)
FROM
	[Parent] [p]

