BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	(
		SELECT TOP 1 
			[ch].[ParentID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

