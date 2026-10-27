-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[PersonID],
	[a_Patient].[PersonID] as [PersonID_1],
	[a_Patient].[PersonID] as [PersonID_2],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON ([p].[PersonID] = [a_Patient].[PersonID])
UNION
SELECT
	[p_1].[PersonID],
	IIF(False, 0, NULL) as [PersonID_1],
	IIF(False, 0, NULL) as [PersonID_2],
	IIF(False, '', NULL) as [Diagnosis]
FROM
	[Person] [p_1]

