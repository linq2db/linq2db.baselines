BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[c_1].[PersonID],
	[c_1].[FirstName],
	[c_1].[LastName],
	[c_1].[MiddleName],
	[c_1].[Gender],
	[c_1].[LastName] + ', ' + [c_1].[FirstName],
	[c_1].[LastName] + ', ' + [c_1].[FirstName],
	[t1].[cnt]
FROM
	([Doctor] [cp]
		INNER JOIN [Person] [c_1] ON ([cp].[PersonID] = [c_1].[PersonID]))
		LEFT JOIN (
			SELECT
				Count(*) as [cnt],
				[d].[PersonID]
			FROM
				[Doctor] [d]
			GROUP BY
				[d].[PersonID]
		) [t1] ON ([t1].[PersonID] = [c_1].[PersonID])

