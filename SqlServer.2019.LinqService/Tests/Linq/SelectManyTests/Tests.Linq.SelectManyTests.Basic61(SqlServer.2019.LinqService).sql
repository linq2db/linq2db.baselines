BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[a_Children].[ParentID] + 1
FROM
	[Parent] [t1]
		INNER JOIN [Child] [a_Children] ON [t1].[ParentID] = [a_Children].[ParentID]
WHERE
	([a_Children].[ParentID] > 0 OR [a_Children].[ParentID] > 1) AND
	([a_Children].[ParentID] > -1 OR [a_Children].[ParentID] > 2)

