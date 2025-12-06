-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[a_Parent].[ParentID] = [a_GrandChildren].[ParentID] AND
			[a_GrandChildren].[ParentID] + 1 < [p1].[ParentID] + 2
	)
FROM
	[Child] [p1]
		LEFT JOIN [Parent] [a_Parent] ON [p1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[p1].[ParentID] > -1 AND [p1].[ParentID] > -2

