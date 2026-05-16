-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			'test' + IIF([a_Patient].[Diagnosis] IS NULL, '', [a_Patient].[Diagnosis]) as [c1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON ([t1].[PersonID] = [a_Patient].[PersonID])
	) [t2]

