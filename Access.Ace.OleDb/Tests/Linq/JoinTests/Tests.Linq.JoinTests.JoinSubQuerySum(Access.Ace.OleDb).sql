-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	IIF([t1].[count_1] IS NULL, 0, [t1].[count_1])
FROM
	(
		SELECT
			[p].[ParentID],
			(
				SELECT
					IIF(SUM([c_1].[ChildID]) IS NULL, 0, SUM([c_1].[ChildID]))
				FROM
					[Child] [c_1]
				WHERE
					[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] <> [p].[ParentID] * 10 + 1
			) as [count_1]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	[t1].[ParentID] > 0

