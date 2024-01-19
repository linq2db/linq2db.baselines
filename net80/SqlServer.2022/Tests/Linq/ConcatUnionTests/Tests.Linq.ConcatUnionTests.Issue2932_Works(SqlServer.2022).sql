BeforeExecute
-- SqlServer.2022

SELECT
	[p].[ChildID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID] AND [p].[ChildID] = [t1].[ChildID]
	), 1, 0)
FROM
	[Child] [p]
UNION ALL
SELECT
	[p_1].[ChildID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [t2]
		WHERE
			[p_1].[ParentID] = [t2].[ParentID] AND [p_1].[ChildID] = [t2].[ChildID]
	), 1, 0)
FROM
	[Child] [p_1]

