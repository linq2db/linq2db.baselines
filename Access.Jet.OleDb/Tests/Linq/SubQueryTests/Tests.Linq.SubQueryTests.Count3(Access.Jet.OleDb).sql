-- Access.Jet.OleDb AccessOleDb

SELECT
	[p_1].[ParentID],
	[p_1].[Sum_1]
FROM
	(
		SELECT
			IIF([t1].[Sum_1] IS NULL, 0, [t1].[Sum_1]) / 2 as [Sum_1],
			[t1].[ParentID]
		FROM
			(
				SELECT
					(
						SELECT
							IIF(SUM([a_Children].[ParentID]) IS NULL, 0, SUM([a_Children].[ParentID]))
						FROM
							[Child] [a_Children]
						WHERE
							[p].[ParentID] = [a_Children].[ParentID]
					) as [Sum_1],
					[p].[ParentID]
				FROM
					[Parent] [p]
			) [t1]
	) [p_1]
WHERE
	[p_1].[Sum_1] > 1

