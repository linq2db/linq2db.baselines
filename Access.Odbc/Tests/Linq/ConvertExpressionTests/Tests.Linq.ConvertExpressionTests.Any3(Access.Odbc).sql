BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] > 1 AND [p].[ParentID] = [c_1].[ParentID]
	)

