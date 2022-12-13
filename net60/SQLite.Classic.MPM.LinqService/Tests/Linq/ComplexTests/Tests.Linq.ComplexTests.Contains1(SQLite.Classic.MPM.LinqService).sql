BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[t3].[gc3],
	[t3].[ChildID],
	[t3].[GrandChildID],
	[t3].[is_empty]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
		LEFT JOIN (
			SELECT
				[gc1].[ParentID] as [gc3],
				[gc1].[ChildID],
				[gc1].[GrandChildID],
				1 as [is_empty]
			FROM
				[GrandChild] [gc1]
					INNER JOIN (
						SELECT
							[max_1].[c1]
						FROM
							(
								SELECT
									Max([t1].[GrandChildID]) as [c1]
								FROM
									[GrandChild] [t1]
								GROUP BY
									[t1].[ChildID]
							) [max_1]
					) [t2] ON ([gc1].[GrandChildID] = [t2].[c1] OR [gc1].[GrandChildID] IS NULL AND [t2].[c1] IS NULL)
		) [t3] ON [p].[ParentID] = [t3].[gc3]
WHERE
	([t3].[gc3] IS NULL AND [t3].[ChildID] IS NULL AND [t3].[GrandChildID] IS NULL OR ([t3].[GrandChildID] NOT IN (111, 222) OR [t3].[GrandChildID] IS NULL))

