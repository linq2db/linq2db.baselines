BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[child_1].[ParentID],
	[child_1].[ChildID]
FROM
	(
		SELECT
			[ch].[ChildID]
		FROM
			[GrandChild] [r]
				INNER JOIN [Child] [ch] ON [r].[ChildID] = [ch].[ChildID]
		UNION
		SELECT
			[ch_1].[ChildID]
		FROM
			[Child] [ch_1]
				INNER JOIN [Parent] [p] ON [ch_1].[ParentID] = [p].[ParentID]
	) [r_1]
		INNER JOIN [Child] [child_1] ON [r_1].[ChildID] = [child_1].[ChildID]

