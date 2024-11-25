BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[ParentID],
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	), True, False)
FROM
	[Parent] [p]

