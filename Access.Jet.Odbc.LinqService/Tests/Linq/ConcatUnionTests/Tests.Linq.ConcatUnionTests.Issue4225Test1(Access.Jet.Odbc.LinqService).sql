BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender],
	IIF(False, 0, NULL),
	IIF(False, '', NULL)
FROM
	[Person] [x]
UNION ALL
SELECT
	IIF(False, '', NULL),
	IIF(False, 0, NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	IIF(False, 'M', NULL),
	[x_1].[PersonID],
	[x_1].[Diagnosis]
FROM
	[Patient] [x_1]

