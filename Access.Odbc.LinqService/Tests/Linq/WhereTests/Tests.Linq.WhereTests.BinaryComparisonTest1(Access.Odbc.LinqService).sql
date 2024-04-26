BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Person] [t1]
WHERE
	IIF([t1].[FirstName] = [t1].[FirstName], True, False) = IIF(([t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL), True, False)

