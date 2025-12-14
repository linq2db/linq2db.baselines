-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([p].[ParentID] - 1 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), True, False)
FROM
	[Parent] [p]

