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
	Iif(Iif([p].[FirstName] IS NULL, NULL, [p].[FirstName] LIKE 'Jo%') IS NULL, False, Iif([p].[FirstName] IS NULL, NULL, [p].[FirstName] LIKE 'Jo%')) = True

