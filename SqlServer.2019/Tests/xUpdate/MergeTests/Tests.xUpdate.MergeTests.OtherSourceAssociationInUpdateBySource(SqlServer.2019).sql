BeforeExecute
-- SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Updated'

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [source_ID]
	FROM
		[Person] [t1]
) [Source]
(
	[source_ID]
)
ON ([Target].[PersonID] = [Source].[source_ID] + 10)

WHEN NOT MATCHED By Source AND [Target].[FirstName] = N'first 3' THEN UPDATE
SET
	[FirstName] = @FirstName,
	[LastName] = (
		SELECT
			[a_Patient_1].[Diagnosis]
		FROM
			[Patient] [a_Patient],
			[Person] [a_Person],
			[Patient] [a_Patient_1]
		WHERE
			[Target].[PersonID] = [a_Patient].[PersonID] AND [a_Patient].[PersonID] = [a_Person].[PersonID] AND
			[a_Person].[PersonID] = [a_Patient_1].[PersonID]
	)
;

BeforeExecute
-- SqlServer.2019

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
