BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [a_GrandChildren1]
		WHERE
			[a].[ParentID] = [a_GrandChildren1].[ParentID] AND
			[a].[ChildID] = [a_GrandChildren1].[ChildID]
	)
FROM
	[Child] [a]

