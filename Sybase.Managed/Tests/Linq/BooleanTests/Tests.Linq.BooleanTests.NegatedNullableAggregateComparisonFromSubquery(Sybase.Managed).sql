-- Sybase.Managed Sybase
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	NOT ((
		SELECT
			MAX([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[x].[ParentID] = [a_Children].[ParentID]
	) = 11 AND (
		SELECT
			MAX([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[x].[ParentID] = [a_Children].[ParentID]
	) IS NOT NULL)

