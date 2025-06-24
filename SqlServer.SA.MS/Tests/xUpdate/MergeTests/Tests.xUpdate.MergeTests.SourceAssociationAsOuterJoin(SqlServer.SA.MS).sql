BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [source_ID],
		[a_Patient].[Diagnosis] as [source_Patient_Diagnosis]
	FROM
		[Person] [t1]
			LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
) [Source]
(
	[source_ID],
	[source_Patient_Diagnosis]
)
ON ([Target].[PersonID] = [Source].[source_ID])
WHEN MATCHED AND [Source].[source_Patient_Diagnosis] <> N'sick' OR [Source].[source_Patient_Diagnosis] IS NULL THEN DELETE
;

BeforeExecute
DisposeTransaction
