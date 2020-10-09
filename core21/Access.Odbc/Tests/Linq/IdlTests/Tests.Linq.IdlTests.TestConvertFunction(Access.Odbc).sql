BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[x].[PersonID]
FROM
	[Patient] [x]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[x].[PersonID], 
	[x].[FirstName]
FROM
	[Person] [x]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[x_1].[PersonID], 
	[x].[PersonID], 
	[x].[FirstName]
FROM
	[Patient] [x_1]
		INNER JOIN [Person] [x] ON ([x_1].[PersonID] = [x].[PersonID])

