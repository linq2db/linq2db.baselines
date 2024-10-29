BeforeExecute
-- SqlServer.2014

SELECT
	[patient_1].[PersonID],
	[person_1].[FirstName],
	[doctor_1].[Taxonomy]
FROM
	[Patient] [patient_1]
		CROSS JOIN [Person] [person_1]
		LEFT JOIN [Doctor] [doctor_1] ON [doctor_1].[PersonID] = [person_1].[PersonID] AND [doctor_1].[PersonID] = [patient_1].[PersonID]
WHERE
	[person_1].[FirstName] LIKE N'J%' ESCAPE N'~'
ORDER BY
	[patient_1].[PersonID],
	[person_1].[FirstName],
	[doctor_1].[Taxonomy]

