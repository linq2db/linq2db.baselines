BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	(
		SELECT DISTINCT TOP (1)
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

