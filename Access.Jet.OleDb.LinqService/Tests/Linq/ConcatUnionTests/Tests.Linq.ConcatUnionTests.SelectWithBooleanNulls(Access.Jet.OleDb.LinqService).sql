BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	),
	[x].[ParentID] <> 0
FROM
	[Parent] [x]
UNION ALL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [t2]
	),
	IIF(False, False, NULL)
FROM
	[Parent] [x_1]

