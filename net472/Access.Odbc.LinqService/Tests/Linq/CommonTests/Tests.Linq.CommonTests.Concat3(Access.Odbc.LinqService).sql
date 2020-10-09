BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	((([p].[FirstName] + ' ') + CStr(1)) + CStr(2)) = 'John 12'

