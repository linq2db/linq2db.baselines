BeforeExecute
-- SqlServer.2008

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2008

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [ID],
		[a_Patient].[Diagnosis]
	FROM
		[Person] [t1]
			LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
) [Source]
(
	[ID],
	[Diagnosis]
)
ON ([Target].[PersonID] = [Source].[ID])
WHEN MATCHED AND ([Source].[Diagnosis] <> N'sick' OR [Source].[Diagnosis] IS NULL) THEN DELETE
;

BeforeExecute
DisposeTransaction
