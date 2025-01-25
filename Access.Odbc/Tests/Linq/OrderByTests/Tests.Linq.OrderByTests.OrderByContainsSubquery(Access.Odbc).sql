BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[PersonID],
	[t1].[LastName],
	IIF([t1].[PersonID] IN (1, 3), True, False)
FROM
	[Person] [t1]
ORDER BY
	IIF([t1].[PersonID] IN (1, 3), True, False)

