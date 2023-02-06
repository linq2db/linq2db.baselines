﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

MERGE INTO [Person] [Target]
USING
(
	SELECT
		[p].[PersonID] as [ID],
		[a_Patient].[Diagnosis]
	FROM
		[Person] [p]
			INNER JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
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
