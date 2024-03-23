BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	EXISTS(
		SELECT
			[y].[ParentID]
		FROM
			[Child] [y]
		GROUP BY
			[y].[ParentID]
		HAVING
			MAX([y].[ChildID]) = [x].[ChildID]
	)

