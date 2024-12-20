BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] + 1 < [p1].[ParentID] + 1 AND
			[p1].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] > -1

