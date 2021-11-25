BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[patient_1].[PersonID],
	[person_1].[FirstName],
	[x].[Taxonomy]
FROM
	[Patient] [patient_1]
		CROSS JOIN [Person] [person_1]
		LEFT JOIN [Doctor] [x] ON [x].[PersonID] = [person_1].[PersonID] AND [x].[PersonID] = [patient_1].[PersonID]
WHERE
	[person_1].[FirstName] LIKE N'J%' ESCAPE N'~'
ORDER BY
	[patient_1].[PersonID],
	[person_1].[FirstName],
	[x].[Taxonomy]

