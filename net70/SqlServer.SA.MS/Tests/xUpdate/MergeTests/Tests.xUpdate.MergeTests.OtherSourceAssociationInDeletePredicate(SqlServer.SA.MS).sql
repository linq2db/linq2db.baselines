BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

MERGE INTO [Patient] [Target]
USING (
	SELECT
		[t1].[PersonID],
		[t1].[Diagnosis],
		[a_Person].[FirstName]
	FROM
		[Patient] [t1]
			LEFT JOIN [Person] [a_Person] ON [t1].[PersonID] = [a_Person].[PersonID]
) [Source]
(
	[PersonID],
	[Diagnosis],
	[FirstName]
)
ON ([Target].[PersonID] = [Source].[PersonID] AND [Source].[Diagnosis] LIKE N'%very%' ESCAPE N'~')
WHEN MATCHED AND EXISTS(
	SELECT
		*
	FROM
		[Person] [a_Person_1]
	WHERE
		[Source].[FirstName] = N'first 4' AND [a_Person_1].[FirstName] = N'first 4' AND
		[Target].[PersonID] = [a_Person_1].[PersonID]
) THEN DELETE
;

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
DisposeTransaction
