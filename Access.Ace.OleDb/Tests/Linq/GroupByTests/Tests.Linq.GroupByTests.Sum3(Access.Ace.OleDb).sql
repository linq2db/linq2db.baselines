-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([g_3].[Sum_1] IS NULL, 0, [g_3].[Sum_1])
FROM
	(
		SELECT
			(
				SELECT
					SUM([a_Children].[ChildID])
				FROM
					[Child] [a_Children]
				WHERE
					[g_2].[ParentID] = [a_Children].[ParentID]
			) as [Sum_1]
		FROM
			(
				SELECT DISTINCT
					[a_Parent].[ParentID],
					[a_Parent].[Value1]
				FROM
					[Child] [g_1]
						LEFT JOIN [Parent] [a_Parent] ON ([g_1].[ParentID] = [a_Parent].[ParentID])
			) [g_2]
	) [g_3]

