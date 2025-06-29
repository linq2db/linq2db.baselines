BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

MERGE INTO [Patient] [Target]
USING (
	SELECT
		[t1].[PersonID],
		[t1].[Diagnosis],
		[a_Person].[FirstName] as [Person_FirstName],
		[a_Person_1].[FirstName] as [Person_FirstName_1]
	FROM
		[Patient] [t1]
			LEFT JOIN [Person] [a_Person] ON [t1].[PersonID] = [a_Person].[PersonID]
			LEFT JOIN [Patient] [Target_1] ON [Target_1].[PersonID] = [t1].[PersonID] AND [t1].[Diagnosis] LIKE N'%very%' ESCAPE N'~'
			LEFT JOIN [Person] [a_Person_1] ON [Target_1].[PersonID] = [a_Person_1].[PersonID]
) [Source]
(
	[PersonID],
	[Diagnosis],
	[Person_FirstName],
	[Person_FirstName_1]
)
ON ([Target].[PersonID] = [Source].[PersonID] AND [Source].[Diagnosis] LIKE N'%very%' ESCAPE N'~')
WHEN MATCHED AND [Source].[Person_FirstName] = N'first 4' AND [Source].[Person_FirstName_1] = N'first 4' THEN DELETE
;

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
DisposeTransaction
