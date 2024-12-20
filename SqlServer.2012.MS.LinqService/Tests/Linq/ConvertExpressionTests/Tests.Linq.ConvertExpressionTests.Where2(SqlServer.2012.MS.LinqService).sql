BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	(
		SELECT
			SUM([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] > 1 AND [a_Children].[ParentID] < 10 AND
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] > 1 AND [p].[ParentID] = [c_1].[ParentID]
	)

