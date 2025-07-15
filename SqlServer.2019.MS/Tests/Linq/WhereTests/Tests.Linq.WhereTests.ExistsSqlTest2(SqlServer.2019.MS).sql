BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [p]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	) AND
	[p].[ParentID] > 100

