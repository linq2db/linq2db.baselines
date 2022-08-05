﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @patient Int -- Int32
SET     @patient = 2

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t].[PersonID] as [ID],
		[t].[FirstName],
		[t].[LastName],
		[t].[MiddleName],
		[t].[Gender]
	FROM
		[Person] [t]
			LEFT JOIN [Patient] [a_Patient] ON [t].[PersonID] = [a_Patient].[PersonID]
	WHERE
		[a_Patient].[PersonID] = @patient
) [Source]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
ON ([Target].[PersonID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[FirstName] = [Source].[FirstName],
	[Target].[LastName] = [Source].[LastName],
	[Target].[MiddleName] = [Source].[MiddleName],
	[Target].[Gender] = [Source].[Gender]

WHEN NOT MATCHED THEN
INSERT
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	[Source].[FirstName],
	[Source].[LastName],
	[Source].[MiddleName],
	[Source].[Gender]
)

WHEN NOT MATCHED BY SOURCE AND EXISTS(
	SELECT
		*
	FROM
		[Patient] [a_Patient_1]
	WHERE
		[a_Patient_1].[PersonID] = @patient AND [Target].[PersonID] = [a_Patient_1].[PersonID]
) THEN DELETE
;

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @patient Int -- Int32
SET     @patient = 3

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t].[PersonID] as [ID],
		[t].[FirstName],
		[t].[LastName],
		[t].[MiddleName],
		[t].[Gender]
	FROM
		[Person] [t]
			LEFT JOIN [Patient] [a_Patient] ON [t].[PersonID] = [a_Patient].[PersonID]
	WHERE
		[a_Patient].[PersonID] = @patient
) [Source]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
ON ([Target].[PersonID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[FirstName] = [Source].[FirstName],
	[Target].[LastName] = [Source].[LastName],
	[Target].[MiddleName] = [Source].[MiddleName],
	[Target].[Gender] = [Source].[Gender]

WHEN NOT MATCHED THEN
INSERT
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	[Source].[FirstName],
	[Source].[LastName],
	[Source].[MiddleName],
	[Source].[Gender]
)

WHEN NOT MATCHED BY SOURCE AND EXISTS(
	SELECT
		*
	FROM
		[Patient] [a_Patient_1]
	WHERE
		[a_Patient_1].[PersonID] = @patient AND [Target].[PersonID] = [a_Patient_1].[PersonID]
) THEN DELETE
;

