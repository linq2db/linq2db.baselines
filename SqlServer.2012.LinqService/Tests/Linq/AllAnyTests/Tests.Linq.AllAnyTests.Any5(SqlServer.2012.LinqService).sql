BeforeExecute
-- SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[GrandChild] [g_1]
				WHERE
					[g_1].[ParentID] > 3 AND [c_1].[ParentID] = [g_1].[ParentID] AND
					[c_1].[ChildID] = [g_1].[ChildID]
			) AND
			[p].[ParentID] = [c_1].[ParentID]
	)

