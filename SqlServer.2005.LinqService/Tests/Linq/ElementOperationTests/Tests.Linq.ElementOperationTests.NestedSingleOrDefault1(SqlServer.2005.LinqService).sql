BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	(
		SELECT DISTINCT
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

