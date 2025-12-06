-- SqlServer.2014

SELECT TOP (1)
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

-- SqlServer.2014
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

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
			INNER JOIN [Patient] [a_Patient] ON [t].[PersonID] = [a_Patient].[PersonID]
	WHERE
		[a_Patient].[PersonID] = @PersonID
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
	[FirstName] = [Source].[FirstName],
	[LastName] = [Source].[LastName],
	[MiddleName] = [Source].[MiddleName],
	[Gender] = [Source].[Gender]

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
WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		[a_Patient_1].[PersonID]
	FROM
		[Patient] [a_Patient_1]
	WHERE
		[Target].[PersonID] = [a_Patient_1].[PersonID]
) = @PersonID THEN DELETE
;

