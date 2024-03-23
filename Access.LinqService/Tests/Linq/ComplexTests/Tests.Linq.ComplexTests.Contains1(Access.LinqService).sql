BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[ParentID],
	IIF([gc3_1].[ParentID] IS NOT NULL AND [gc3_1].[ChildID] IS NOT NULL AND [gc3_1].[GrandChildID] IS NOT NULL, True, False),
	[gc3_1].[ParentID],
	[gc3_1].[ChildID],
	[gc3_1].[GrandChildID]
FROM
	([Child] [ch]
		INNER JOIN [Parent] [p] ON ([ch].[ParentID] = [p].[ParentID]))
		LEFT JOIN (
			SELECT
				[gc3].[ParentID],
				[gc3].[ChildID],
				[gc3].[GrandChildID]
			FROM
				[GrandChild] [gc3]
					INNER JOIN (
						SELECT
							MAX([max_1].[GrandChildID]) as [MAX_1]
						FROM
							[GrandChild] [max_1]
						GROUP BY
							[max_1].[ChildID]
					) [t1] ON ([gc3].[GrandChildID] = [t1].[MAX_1])
		) [gc3_1] ON ([p].[ParentID] = [gc3_1].[ParentID])
WHERE
	([gc3_1].[ParentID] IS NULL AND [gc3_1].[ChildID] IS NULL AND [gc3_1].[GrandChildID] IS NULL OR ([gc3_1].[GrandChildID] NOT IN (111, 222) OR [gc3_1].[GrandChildID] IS NULL))

