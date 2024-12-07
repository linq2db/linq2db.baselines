BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[c1],
	[t1].[c2],
	[t1].[c3]
FROM
	(
		SELECT
			0 as [c1],
			IIF(False, '', NULL) as [c2],
			IIF(False, '', NULL) as [c3]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] < 0
		UNION ALL
		SELECT
			[p_1].[PersonID] as [c1],
			[p_1].[FirstName] as [c2],
			[p_1].[LastName] as [c3]
		FROM
			[Person] [p_1]
	) [t1]
ORDER BY
	[t1].[c1],
	[t1].[c2],
	[t1].[c3]

