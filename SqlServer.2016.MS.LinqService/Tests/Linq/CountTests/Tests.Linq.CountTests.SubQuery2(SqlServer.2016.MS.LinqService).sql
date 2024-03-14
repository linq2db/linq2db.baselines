BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[Value1],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	),
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children_1]
		WHERE
			[p].[ParentID] = [a_Children_1].[ParentID] AND [a_Children_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

