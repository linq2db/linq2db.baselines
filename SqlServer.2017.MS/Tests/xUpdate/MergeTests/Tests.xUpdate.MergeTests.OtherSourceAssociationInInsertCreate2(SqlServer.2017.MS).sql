BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [source_ID],
		[a_Patient].[Diagnosis] as [source_Patient_Diagnosis]
	FROM
		[Person] [t1]
			INNER JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
) [Source]
(
	[source_ID],
	[source_Patient_Diagnosis]
)
ON ([Target].[PersonID] = [Source].[source_ID] AND [Target].[FirstName] <> N'first 3')

WHEN NOT MATCHED THEN
INSERT
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	[Source].[source_Patient_Diagnosis],
	N'Inserted 2',
	'U'
)
;

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
