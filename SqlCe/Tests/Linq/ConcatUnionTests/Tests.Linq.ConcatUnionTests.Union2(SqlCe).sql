-- SqlCe

SELECT
	[child_1].[ParentID],
	[child_1].[ChildID]
FROM
	(
		SELECT
			[ch].[ChildID] as [set_col_0__]
		FROM
			[GrandChild] [r]
				INNER JOIN [Child] [ch] ON [r].[ChildID] = [ch].[ChildID]
		UNION
		SELECT
			[ch_1].[ChildID] as [set_col_0__]
		FROM
			[Child] [ch_1]
				INNER JOIN [Parent] [p] ON [ch_1].[ParentID] = [p].[ParentID]
	) [r_1]
		INNER JOIN [Child] [child_1] ON [r_1].[set_col_0__] = [child_1].[ChildID]

