﻿BeforeExecute
--  SqlServer.2022

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
--  SqlServer.2022

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
	[FirstName] = N'Updated',
	[LastName] = (
		SELECT
			[a_Patient].[Diagnosis]
		FROM
			[Patient] [a_Patient]
				INNER JOIN [Person] [a_Person] ON [a_Patient].[PersonID] = [a_Person].[PersonID]
		WHERE
			[Target].[PersonID] = [a_Patient].[PersonID]
	)
;

BeforeExecute
--  SqlServer.2022

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
