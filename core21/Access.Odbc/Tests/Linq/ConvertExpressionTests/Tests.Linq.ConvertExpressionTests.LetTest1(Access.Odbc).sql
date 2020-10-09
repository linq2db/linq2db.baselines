BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	(
		SELECT TOP 1 
			[p].[ParentID]
		FROM
			[Child] [p]
		WHERE
			[p_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p_1]
WHERE
	(
		SELECT TOP 1 
			1
		FROM
			[Child] [t1]
		WHERE
			[p_1].[ParentID] = [t1].[ParentID]
	) IS NOT NULL

