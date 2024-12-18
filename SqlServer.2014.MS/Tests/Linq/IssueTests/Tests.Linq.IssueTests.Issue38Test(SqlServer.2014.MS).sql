BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [a_GrandChildren1]
		WHERE
			[a].[ParentID] = [a_GrandChildren1].[ParentID] AND
			[a_GrandChildren1].[ParentID] IS NOT NULL AND
			[a].[ChildID] = [a_GrandChildren1].[ChildID] AND
			[a_GrandChildren1].[ChildID] IS NOT NULL
	)
FROM
	[Child] [a]

