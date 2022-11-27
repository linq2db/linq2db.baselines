﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
ON ([Target].[PersonID] = [Source].[ID] AND [Target].[FirstName] <> N'first 3')

WHEN NOT MATCHED AND [Source].[Diagnosis] LIKE N'%sick%' ESCAPE N'~' THEN
INSERT
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	[Source].[Diagnosis],
	N'Inserted 2',
	N'U'
)
;

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
RollbackTransaction
