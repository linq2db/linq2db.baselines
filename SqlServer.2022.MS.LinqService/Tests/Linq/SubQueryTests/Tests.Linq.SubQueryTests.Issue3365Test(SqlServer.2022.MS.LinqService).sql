BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID]
FROM
	(
		SELECT
			(
				SELECT TOP (1)
					[a_GrandChildren].[ParentID]
				FROM
					[GrandChild] [a_GrandChildren]
				WHERE
					[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
			) as [ParentID]
		FROM
			[Child] [x]
	) [t1]
ORDER BY
	[t1].[ParentID]

