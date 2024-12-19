BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[PersonID]
FROM
	[Patient] [x]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[PersonID],
	[x].[FirstName]
FROM
	[Person] [x]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[PersonID],
	[person_1].[PersonID],
	[person_1].[FirstName]
FROM
	[Patient] [x]
		INNER JOIN [Person] [person_1] ON ([x].[PersonID] = [person_1].[PersonID])

