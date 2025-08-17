BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			(
				SELECT DISTINCT
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) [t1]
	)
FROM
	[Parent] [p]

