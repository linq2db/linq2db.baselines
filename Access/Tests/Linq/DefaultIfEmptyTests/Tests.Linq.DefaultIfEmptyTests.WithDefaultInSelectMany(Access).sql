BeforeExecute
-- Access AccessOleDb

SELECT
	[s].[ParentID],
	[s].[Value1],
	[c_2].[ParentID],
	[c_2].[ChildID_1]
FROM
	[Parent] [s]
		LEFT JOIN (
			SELECT
				IIF([c_1].[ParentID] IS NOT NULL, [c_1].[ChildID], -100) as [ChildID],
				[c_1].[ParentID],
				[c_1].[ChildID] as [ChildID_1]
			FROM
				[Child] [c_1]
		) [c_2] ON ([s].[ParentID] = [c_2].[ParentID])
WHERE
	[c_2].[ChildID] < 0

