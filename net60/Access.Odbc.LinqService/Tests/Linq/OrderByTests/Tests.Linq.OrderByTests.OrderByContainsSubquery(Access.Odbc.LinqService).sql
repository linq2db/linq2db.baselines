BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[_].[PersonID],
	[_].[LastName]
FROM
	[Person] [_]
ORDER BY
	Iif([_].[PersonID] IN (1, 3), True, False)

