-- SqlServer.2005.MS SqlServer.2005
SELECT
	[p].[ParentID],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[GrandChild] [g_1]
			WHERE
				[g_1].[ChildID] IS NOT NULL AND [g_1].[ParentID] = [p].[ParentID]
		)
			THEN 1
		ELSE 0
	END
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

