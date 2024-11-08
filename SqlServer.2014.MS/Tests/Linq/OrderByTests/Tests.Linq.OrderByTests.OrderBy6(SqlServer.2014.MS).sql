BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[person_1].[PersonID],
	[patient_1].[PersonID]
FROM
	[Person] [person_1]
		LEFT JOIN [Patient] [patient_1] ON [person_1].[PersonID] = [patient_1].[PersonID]
ORDER BY
	[person_1].[MiddleName]

