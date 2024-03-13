BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Person] [_]
WHERE
	IIF([_].[FirstName] = [_].[FirstName], True, False) <> IIF(([_].[MiddleName] <> [_].[LastName] OR [_].[MiddleName] IS NULL), True, False)

