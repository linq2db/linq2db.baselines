﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Max([_].[PersonID])
FROM
	[Person] [_]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 12

SET IDENTITY_INSERT [Person] ON
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
	[PersonID],
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@ID,
	N'Inserted 1',
	N'Inserted 2',
	N'M'
)
;
SET IDENTITY_INSERT [Person] OFF

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
