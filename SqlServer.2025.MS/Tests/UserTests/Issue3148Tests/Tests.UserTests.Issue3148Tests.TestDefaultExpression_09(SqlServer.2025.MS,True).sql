-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				[a_GrandChildren].[ParentID],
				[a_GrandChildren].[ChildID],
				[a_GrandChildren].[GrandChildID]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				IIF([d].[not_null] IS NOT NULL, [d].[ParentID], NULL) as [ParentID],
				IIF([d].[not_null] IS NOT NULL, [d].[ChildID], NULL) as [ChildID],
				IIF([d].[not_null] IS NOT NULL, [d].[GrandChildID], NULL) as [GrandChildID]
			FROM
				(
					SELECT
						1 as [c1]
				) [t2]
					LEFT JOIN (
						SELECT
							1 as [not_null],
							[a_GrandChildren_1].[ParentID],
							[a_GrandChildren_1].[ChildID],
							[a_GrandChildren_1].[GrandChildID]
						FROM
							[GrandChild] [a_GrandChildren_1]
						WHERE
							[x].[ParentID] = [a_GrandChildren_1].[ParentID] AND
							[x].[ChildID] = [a_GrandChildren_1].[ChildID]
					) [d] ON 1=1
		) [t3]
WHERE
	NOT (([t1].[ParentID] = [t3].[ParentID] OR [t1].[ParentID] IS NULL AND [t3].[ParentID] IS NULL) AND NOT ([t1].[ParentID] IS NULL AND [t3].[ParentID] IS NOT NULL) AND NOT ([t1].[ParentID] IS NOT NULL AND [t3].[ParentID] IS NULL) AND ([t1].[ChildID] = [t3].[ChildID] OR [t1].[ChildID] IS NULL AND [t3].[ChildID] IS NULL) AND NOT ([t1].[ChildID] IS NULL AND [t3].[ChildID] IS NOT NULL) AND NOT ([t1].[ChildID] IS NOT NULL AND [t3].[ChildID] IS NULL) AND ([t1].[GrandChildID] = [t3].[GrandChildID] OR [t1].[GrandChildID] IS NULL AND [t3].[GrandChildID] IS NULL) AND NOT ([t1].[GrandChildID] IS NULL AND [t3].[GrandChildID] IS NOT NULL) AND NOT ([t1].[GrandChildID] IS NOT NULL AND [t3].[GrandChildID] IS NULL)) AND
	IIF([x].[ParentID] = (
		SELECT TOP (1)
			IIF([d_1].[ChildID] IS NOT NULL, [d_1].[ChildID], 0)
		FROM
			(
				SELECT
					1 as [c1]
			) [t4]
				LEFT JOIN [Child] [d_1] ON [a_Parent].[ParentID] = [d_1].[ParentID]
	), 0, 1) = 1

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				[a_GrandChildren].[ParentID],
				[a_GrandChildren].[ChildID],
				[a_GrandChildren].[GrandChildID]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				IIF([d].[not_null] IS NOT NULL, [d].[ParentID], NULL) as [ParentID],
				IIF([d].[not_null] IS NOT NULL, [d].[ChildID], NULL) as [ChildID],
				IIF([d].[not_null] IS NOT NULL, [d].[GrandChildID], NULL) as [GrandChildID]
			FROM
				(
					SELECT
						1 as [c1]
				) [t2]
					LEFT JOIN (
						SELECT
							1 as [not_null],
							[a_GrandChildren_1].[ParentID],
							[a_GrandChildren_1].[ChildID],
							[a_GrandChildren_1].[GrandChildID]
						FROM
							[GrandChild] [a_GrandChildren_1]
						WHERE
							[x].[ParentID] = [a_GrandChildren_1].[ParentID] AND
							[x].[ChildID] = [a_GrandChildren_1].[ChildID]
					) [d] ON 1=1
		) [t3]
WHERE
	NOT (([t1].[ParentID] = [t3].[ParentID] OR [t1].[ParentID] IS NULL AND [t3].[ParentID] IS NULL) AND NOT ([t1].[ParentID] IS NULL AND [t3].[ParentID] IS NOT NULL) AND NOT ([t1].[ParentID] IS NOT NULL AND [t3].[ParentID] IS NULL) AND ([t1].[ChildID] = [t3].[ChildID] OR [t1].[ChildID] IS NULL AND [t3].[ChildID] IS NULL) AND NOT ([t1].[ChildID] IS NULL AND [t3].[ChildID] IS NOT NULL) AND NOT ([t1].[ChildID] IS NOT NULL AND [t3].[ChildID] IS NULL) AND ([t1].[GrandChildID] = [t3].[GrandChildID] OR [t1].[GrandChildID] IS NULL AND [t3].[GrandChildID] IS NULL) AND NOT ([t1].[GrandChildID] IS NULL AND [t3].[GrandChildID] IS NOT NULL) AND NOT ([t1].[GrandChildID] IS NOT NULL AND [t3].[GrandChildID] IS NULL)) AND
	IIF([x].[ParentID] = (
		SELECT TOP (1)
			IIF([d_1].[ChildID] IS NOT NULL, [d_1].[ChildID], 0)
		FROM
			(
				SELECT
					1 as [c1]
			) [t4]
				LEFT JOIN [Child] [d_1] ON [a_Parent].[ParentID] = [d_1].[ParentID]
	), 0, 1) = 1

