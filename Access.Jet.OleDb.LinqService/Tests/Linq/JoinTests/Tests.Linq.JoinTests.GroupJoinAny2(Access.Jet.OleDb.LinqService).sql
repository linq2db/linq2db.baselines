BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [t1_1]
		WHERE
			[t1].[ParentID] = [t1_1].[ParentID]
	), True, False)
FROM
	[Parent] [t1]

