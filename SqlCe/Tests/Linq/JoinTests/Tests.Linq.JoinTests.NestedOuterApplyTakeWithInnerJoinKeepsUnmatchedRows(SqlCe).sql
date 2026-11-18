-- SqlCe
SELECT
	[c_1].[ChildID],
	[x_1].[ParentID],
	CASE
		WHEN [x_1].[ParentID] IS NULL THEN NULL
		ELSE [x_1].[OtherChildID]
	END
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				[p].[ParentID],
				[ch_1].[ChildID] as [OtherChildID]
			FROM
				(
					SELECT TOP (1)
						[g_1].[ParentID]
					FROM
						[GrandChild] [g_1]
					WHERE
						[g_1].[ChildID] = [c_1].[ChildID]
					ORDER BY
						[g_1].[GrandChildID]
				) [x]
					INNER JOIN [Parent] [p] ON [x].[ParentID] = [p].[ParentID]
					OUTER APPLY (
						SELECT TOP (1)
							[ch].[ChildID]
						FROM
							[Child] [ch]
						WHERE
							[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] <> [c_1].[ChildID]
						ORDER BY
							[ch].[ChildID]
					) [ch_1]
		) [x_1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

