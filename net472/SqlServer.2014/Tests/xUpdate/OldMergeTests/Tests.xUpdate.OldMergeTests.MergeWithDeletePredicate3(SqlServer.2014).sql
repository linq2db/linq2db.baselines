BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @PersonID_1 Int -- Int32
SET     @PersonID_1 = 2
DECLARE @PersonID_2 Int -- Int32
SET     @PersonID_2 = 2

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
		[a_Patient].[PersonID] = @PersonID_1
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
		[a_Patient_1].[PersonID] = @PersonID_2 AND [Target].[PersonID] = [a_Patient_1].[PersonID]
) THEN DELETE
;

