BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF( EXISTS (
		SELECT
			*
		FROM
			[Child] [t1]
	), True, False),
	IIF([x].[ParentID] <> 0, True, False)
FROM
	[Parent] [x]
UNION ALL
SELECT
	IIF( EXISTS (
		SELECT
			*
		FROM
			[Child] [t2]
	), True, False),
	IIF(False, False, NULL)
FROM
	[Parent] [x_1]

