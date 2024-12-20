BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[a_Children].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[p1].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] > -2 AND [p1].[ParentID] > -1

