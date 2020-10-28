BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] + 1 < [p2].[ParentID] + 1 AND [p2].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [p2]
WHERE
	[p2].[ParentID] + 1 > 0

