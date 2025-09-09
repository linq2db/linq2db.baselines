BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

