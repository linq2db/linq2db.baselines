-- SqlCe

SELECT
	[person_1].[PersonID] as [ID],
	[patient_1].[PersonID] as [PatientID]
FROM
	[Person] [person_1]
		LEFT JOIN [Patient] [patient_1] ON [person_1].[PersonID] = [patient_1].[PersonID]
ORDER BY
	[person_1].[MiddleName]

