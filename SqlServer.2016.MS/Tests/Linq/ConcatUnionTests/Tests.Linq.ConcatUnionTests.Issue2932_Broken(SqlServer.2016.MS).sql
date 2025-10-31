-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ChildID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[p].[ParentID] = [a_GrandChildren].[ParentID] AND [p].[ChildID] = [a_GrandChildren].[ChildID]
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
			[GrandChild] [a_GrandChildren_1]
		WHERE
			[p_1].[ParentID] = [a_GrandChildren_1].[ParentID] AND
			[p_1].[ChildID] = [a_GrandChildren_1].[ChildID]
	), 1, 0)
FROM
	[Child] [p_1]

