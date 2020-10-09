BeforeExecute
-- Access AccessOleDb

SELECT 
	[t1].[cnt], 
	[i].[PersonID], 
	[i].[FirstName], 
	[i].[LastName], 
	[i].[MiddleName], 
	[i].[Gender], 
	[i].[LastName] + ', ' + [i].[FirstName], 
	[t2].[cnt]
FROM
	([Person] [i]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [cnt], 
				[d].[PersonID]
			FROM
				[Doctor] [d]
			GROUP BY
				[d].[PersonID]
		) [t1] ON ([t1].[PersonID] = [i].[PersonID]))
		LEFT JOIN ( 
			SELECT 
				Count(*) as [cnt], 
				[d_1].[PersonID]
			FROM
				[Doctor] [d_1]
			GROUP BY
				[d_1].[PersonID]
		) [t2] ON ([t2].[PersonID] = [i].[PersonID])
WHERE
	[i].[FirstName] <> 'John'

