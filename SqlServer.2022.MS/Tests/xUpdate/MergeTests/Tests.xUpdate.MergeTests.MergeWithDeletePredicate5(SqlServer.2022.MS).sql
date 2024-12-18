BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

MERGE INTO [Child] [Target]
USING (
	SELECT
		[t].[ParentID] as [source_ParentID],
		[t].[ChildID] as [source_ChildID]
	FROM
		[Child] [t]
			LEFT JOIN [Parent] [a_Parent] ON [t].[ParentID] = [a_Parent].[ParentID]
	WHERE
		[a_Parent].[ParentID] = 2 AND [a_Parent].[ParentID] IS NOT NULL AND
		EXISTS(
			SELECT
				*
			FROM
				[GrandChild] [g_1]
					LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ParentID] IS NOT NULL AND [g_1].[ChildID] = [a_Child].[ChildID] AND [g_1].[ChildID] IS NOT NULL
			WHERE
				[t].[ParentID] = [g_1].[ParentID] AND
				[g_1].[ParentID] IS NOT NULL AND
				[t].[ChildID] = [g_1].[ChildID] AND
				[g_1].[ChildID] IS NOT NULL AND
				[a_Child].[ChildID] = 22 AND
				[a_Child].[ChildID] IS NOT NULL
		)
) [Source]
(
	[source_ParentID],
	[source_ChildID]
)
ON ([Target].[ParentID] = [Source].[source_ParentID] AND
[Target].[ChildID] = [Source].[source_ChildID])

WHEN NOT MATCHED THEN
INSERT
(
	[ParentID],
	[ChildID]
)
VALUES
(
	[Source].[source_ParentID],
	[Source].[source_ChildID]
)
WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		[a_Parent_1].[ParentID]
	FROM
		[Parent] [a_Parent_1]
	WHERE
		[Target].[ParentID] = [a_Parent_1].[ParentID]
) = 2 AND
(
	SELECT
		[a_Parent_1].[ParentID]
	FROM
		[Parent] [a_Parent_1]
	WHERE
		[Target].[ParentID] = [a_Parent_1].[ParentID]
) IS NOT NULL AND
EXISTS(
	SELECT
		*
	FROM
		[GrandChild] [g_2]
			LEFT JOIN [Child] [a_Child_1] ON [g_2].[ParentID] = [a_Child_1].[ParentID] AND [g_2].[ParentID] IS NOT NULL AND [g_2].[ChildID] = [a_Child_1].[ChildID] AND [g_2].[ChildID] IS NOT NULL
	WHERE
		[Target].[ParentID] = [g_2].[ParentID] AND
		[g_2].[ParentID] IS NOT NULL AND
		[Target].[ChildID] = [g_2].[ChildID] AND
		[g_2].[ChildID] IS NOT NULL AND
		[a_Child_1].[ChildID] = 22 AND
		[a_Child_1].[ChildID] IS NOT NULL
) THEN DELETE
;

BeforeExecute
DisposeTransaction
