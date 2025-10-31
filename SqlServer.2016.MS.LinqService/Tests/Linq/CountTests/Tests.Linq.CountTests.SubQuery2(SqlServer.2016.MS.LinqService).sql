BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	IIF([p].[Value1] IS NULL, (
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	), (
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children_1]
		WHERE
			[p].[ParentID] = [a_Children_1].[ParentID]
	))
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

