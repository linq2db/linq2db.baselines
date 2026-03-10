-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID_1],
	[t1].[Value1]
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) as [ParentID],
			[p].[ParentID] as [ParentID_1],
			[p].[Value1]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	[t1].[ParentID] IS NOT NULL

