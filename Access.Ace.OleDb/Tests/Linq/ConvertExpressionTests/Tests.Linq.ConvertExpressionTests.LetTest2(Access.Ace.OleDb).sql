-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1],
			(
				SELECT TOP 1
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) as [ParentID_1]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	[t1].[ParentID_1] IS NOT NULL

