BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[a_PersonDoctor].[FirstName]
FROM
	[Doctor] [d]
		INNER JOIN [Person] [a_PersonDoctor] ON [d].[PersonID] = [a_PersonDoctor].[PersonID]

