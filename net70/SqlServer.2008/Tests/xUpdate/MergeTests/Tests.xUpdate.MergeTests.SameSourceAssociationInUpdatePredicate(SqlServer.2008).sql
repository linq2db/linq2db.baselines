BeforeExecute
-- SqlServer.2008

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008

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

WHEN MATCHED AND EXISTS(
	SELECT
		*
	FROM
		[Patient] [a_Patient_1]
	WHERE
		[Source].[Diagnosis] LIKE N'%very%' ESCAPE N'~' AND
		[a_Patient_1].[Diagnosis] LIKE N'%very%' ESCAPE N'~' AND
		[Target].[PersonID] = [a_Patient_1].[PersonID]
) THEN
UPDATE
SET
	[Target].[MiddleName] = N'Updated'
;

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
ORDER BY
	[t1].[PersonID]

BeforeExecute
DisposeTransaction
