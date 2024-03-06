﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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

WHEN NOT MATCHED By Source AND (
	SELECT
		[a_Patient].[Diagnosis]
	FROM
		[Patient] [a_Patient]
	WHERE
		[Target].[PersonID] = [a_Patient].[PersonID]
) LIKE N'%very%' ESCAPE N'~' THEN UPDATE
SET
	[FirstName] = @FirstName
;

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
