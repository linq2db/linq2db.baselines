BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	(
		SELECT TOP 5
			[t1].[ChildID]
		FROM
			[Child] [t1]
	) [t2]

