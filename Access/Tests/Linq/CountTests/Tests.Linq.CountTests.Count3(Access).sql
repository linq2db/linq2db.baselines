BeforeExecute
-- Access AccessOleDb

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

