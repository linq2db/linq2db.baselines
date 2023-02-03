BeforeExecute
-- SqlServer.2017

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2017

MERGE INTO [Person] [Target]
USING
(
	SELECT
		[t1].[PersonID] as [ID]
	FROM
		[Person] [t1]
) [Source]
(
	[ID]
)
ON ([Target].[PersonID] = [Source].[ID] + 10)

WHEN NOT MATCHED By Source AND [Target].[FirstName] = N'first 3' THEN UPDATE
SET
	[Target].[FirstName] = N'Updated',
	[Target].[LastName] = (
		SELECT
			[a_Person].[Diagnosis]
		FROM
			[Patient] [a_Patient_1]
				CROSS APPLY (
					SELECT
						[a_Patient].[Diagnosis]
					FROM
						[Person] [t3]
							CROSS APPLY (
								SELECT
									[t2].[Diagnosis]
								FROM
									[Patient] [t2]
								WHERE
									[t3].[PersonID] = [t2].[PersonID]
							) [a_Patient]
					WHERE
						[a_Patient_1].[PersonID] = [t3].[PersonID]
				) [a_Person]
		WHERE
			[Target].[PersonID] = [a_Patient_1].[PersonID]
	)
;

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
DisposeTransaction
