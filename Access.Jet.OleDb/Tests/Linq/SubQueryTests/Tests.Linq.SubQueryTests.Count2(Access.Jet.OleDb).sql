-- Access.Jet.OleDb AccessOleDb

SELECT
	[p_1].[ParentID],
	[p_1].[Value1]
FROM
	(
		SELECT
			IIF([t1].[Value1] IS NULL, 0, [t1].[Value1]) / 2 as [Value1],
			[t1].[ParentID]
		FROM
			(
				SELECT
					(
						SELECT
							SUM([a_Children].[ParentID])
						FROM
							[Child] [a_Children]
						WHERE
							[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 0
					) as [Value1],
					[p].[ParentID]
				FROM
					[Parent] [p]
			) [t1]
	) [p_1]
WHERE
	[p_1].[Value1] > 1

