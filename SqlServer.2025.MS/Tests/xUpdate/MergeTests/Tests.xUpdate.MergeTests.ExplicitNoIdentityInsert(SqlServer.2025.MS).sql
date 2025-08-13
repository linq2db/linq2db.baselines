BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [ID],
		[a_Patient].[Diagnosis] as [Patient_Diagnosis]
	FROM
		[Person] [t1]
			INNER JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
) [Source]
(
	[ID],
	[Patient_Diagnosis]
)
ON ([Target].[PersonID] = [Source].[ID] AND [Target].[FirstName] <> N'first 3')

WHEN NOT MATCHED AND [Source].[Patient_Diagnosis] LIKE N'%sick%' ESCAPE N'~' THEN
INSERT
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'Inserted 1',
	N'Inserted 2',
	'M'
)
;

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
