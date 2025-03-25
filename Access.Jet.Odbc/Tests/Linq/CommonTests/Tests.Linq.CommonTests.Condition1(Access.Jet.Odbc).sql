BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF(LEN([p].[FirstName]) <> 0, [p].[FirstName], IIF(NOT ([p].[MiddleName] IS NULL OR LEN([p].[MiddleName]) = 0), [p].[MiddleName], [p].[LastName]))
FROM
	[Person] [p]

