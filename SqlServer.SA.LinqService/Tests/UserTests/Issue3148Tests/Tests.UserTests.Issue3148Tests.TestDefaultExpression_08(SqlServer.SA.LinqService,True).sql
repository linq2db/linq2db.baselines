BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				IIF([d].[not_null] IS NOT NULL, [d].[ParentID], 0) as [ParentID],
				IIF([d].[not_null] IS NOT NULL, [d].[Value1], NULL) as [Value1]
			FROM
				(
					SELECT
						1 as [c1]
				) [t1]
					LEFT JOIN (
						SELECT
							1 as [not_null],
							[a_Parent_1].[ParentID],
							[a_Parent_1].[Value1]
						FROM
							[GrandChild] [a_GrandChildren]
								LEFT JOIN [Child] [a_Child] ON ([a_GrandChildren].[ParentID] = [a_Child].[ParentID] OR [a_GrandChildren].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([a_GrandChildren].[ChildID] = [a_Child].[ChildID] OR [a_GrandChildren].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
								LEFT JOIN [Parent] [a_Parent_1] ON [a_Child].[ParentID] = [a_Parent_1].[ParentID]
						WHERE
							[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
					) [d] ON 1=1
		) [t2]
WHERE
	([a_Parent].[ParentID] <> [t2].[ParentID] OR [a_Parent].[ParentID] IS NULL AND [t2].[ParentID] IS NOT NULL OR [a_Parent].[ParentID] IS NOT NULL AND [t2].[ParentID] IS NULL OR [a_Parent].[Value1] <> [t2].[Value1] OR [a_Parent].[Value1] IS NULL AND [t2].[Value1] IS NOT NULL OR [a_Parent].[Value1] IS NOT NULL AND [t2].[Value1] IS NULL) AND
	([x].[ParentID] <> (
		SELECT TOP (1)
			IIF([d_1].[ChildID] IS NOT NULL, [d_1].[ChildID], 0)
		FROM
			(
				SELECT
					0 as [c1]
			) [t3]
				LEFT JOIN [Child] [d_1] ON [a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = [d_1].[ParentID]
	) OR (
		SELECT TOP (1)
			IIF([d_1].[ChildID] IS NOT NULL, [d_1].[ChildID], 0)
		FROM
			(
				SELECT
					0 as [c1]
			) [t3]
				LEFT JOIN [Child] [d_1] ON [a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = [d_1].[ParentID]
	) IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				IIF([d].[not_null] IS NOT NULL, [d].[ParentID], 0) as [ParentID],
				IIF([d].[not_null] IS NOT NULL, [d].[Value1], NULL) as [Value1]
			FROM
				(
					SELECT
						1 as [c1]
				) [t1]
					LEFT JOIN (
						SELECT
							1 as [not_null],
							[a_Parent_1].[ParentID],
							[a_Parent_1].[Value1]
						FROM
							[GrandChild] [a_GrandChildren]
								LEFT JOIN [Child] [a_Child] ON ([a_GrandChildren].[ParentID] = [a_Child].[ParentID] OR [a_GrandChildren].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([a_GrandChildren].[ChildID] = [a_Child].[ChildID] OR [a_GrandChildren].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
								LEFT JOIN [Parent] [a_Parent_1] ON [a_Child].[ParentID] = [a_Parent_1].[ParentID]
						WHERE
							[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
					) [d] ON 1=1
		) [t2]
WHERE
	([a_Parent].[ParentID] <> [t2].[ParentID] OR [a_Parent].[ParentID] IS NULL AND [t2].[ParentID] IS NOT NULL OR [a_Parent].[ParentID] IS NOT NULL AND [t2].[ParentID] IS NULL OR [a_Parent].[Value1] <> [t2].[Value1] OR [a_Parent].[Value1] IS NULL AND [t2].[Value1] IS NOT NULL OR [a_Parent].[Value1] IS NOT NULL AND [t2].[Value1] IS NULL) AND
	([x].[ParentID] <> (
		SELECT TOP (1)
			IIF([d_1].[ChildID] IS NOT NULL, [d_1].[ChildID], 0)
		FROM
			(
				SELECT
					0 as [c1]
			) [t3]
				LEFT JOIN [Child] [d_1] ON [a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = [d_1].[ParentID]
	) OR (
		SELECT TOP (1)
			IIF([d_1].[ChildID] IS NOT NULL, [d_1].[ChildID], 0)
		FROM
			(
				SELECT
					0 as [c1]
			) [t3]
				LEFT JOIN [Child] [d_1] ON [a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = [d_1].[ParentID]
	) IS NULL)

