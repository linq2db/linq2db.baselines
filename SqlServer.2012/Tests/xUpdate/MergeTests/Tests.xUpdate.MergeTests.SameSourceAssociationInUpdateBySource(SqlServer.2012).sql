﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2012

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [ID]
	FROM
		[Person] [t1]
) [Source]
(
	[ID]
)
ON ([Target].[PersonID] = [Source].[ID] + 10)

WHEN NOT MATCHED By Source AND [Target].[FirstName] = N'first 3' THEN UPDATE
SET
	[FirstName] = N'Updated',
	[LastName] = (
		SELECT
			[a_Patient].[Diagnosis]
		FROM
			[Patient] [a_Patient]
		WHERE
			[Target].[PersonID] = [a_Patient].[PersonID]
	)
;

BeforeExecute
-- SqlServer.2012

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
