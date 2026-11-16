-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	([p].[PersonID] BOR ([p].[PersonID] BXOR 1)) = [p].[PersonID]

