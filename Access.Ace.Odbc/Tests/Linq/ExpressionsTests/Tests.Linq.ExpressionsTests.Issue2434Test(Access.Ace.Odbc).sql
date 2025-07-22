BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	IIF([t1].[FirstName] IS NULL, '', [t1].[FirstName]) + ' ' + IIF([t1].[LastName] IS NULL, '', [t1].[LastName])
FROM
	[Issue2434Table] [t1]
ORDER BY
	IIF([t1].[FirstName] IS NULL, '', [t1].[FirstName]) + ' ' + IIF([t1].[LastName] IS NULL, '', [t1].[LastName])

