BeforeExecute
-- SqlServer.Contained SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [ID],
		[t1].[FirstName],
		[a_Patient].[Diagnosis]
	FROM
		[Person] [t1]
			LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
) [Source]
(
	[ID],
	[FirstName],
	[Diagnosis]
)
ON ([Target].[PersonID] = [Source].[ID] AND [Source].[FirstName] = N'first 4')

WHEN MATCHED THEN
UPDATE
SET
	[Target].[MiddleName] = N'first ' + [Source].[Diagnosis],
	[Target].[LastName] = N'last ' + (
		SELECT
			[a_Patient_1].[Diagnosis]
		FROM
			[Patient] [a_Patient_1]
		WHERE
			[Target].[PersonID] = [a_Patient_1].[PersonID]
	)
;

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
