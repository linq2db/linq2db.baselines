BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] <> 'Jo' OR Iif([p].[FirstName] > 'Jo', 1, Iif([p].[FirstName] = 'Jo', 0, -1)) IS NULL) AND
	[p].[PersonID] = 1

