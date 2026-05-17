-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([t1].[Sum_1] IS NULL, 0, [t1].[Sum_1])
FROM
	(
		SELECT
			(
				SELECT
					SUM([a_Children].[ChildID])
				FROM
					[Child] [a_Children]
				WHERE
					[t].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1 AND
					[a_Children].[ParentID] < 10
			) as [Sum_1]
		FROM
			[Parent] [t]
	) [t1]

