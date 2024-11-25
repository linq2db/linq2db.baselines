BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1
	)

