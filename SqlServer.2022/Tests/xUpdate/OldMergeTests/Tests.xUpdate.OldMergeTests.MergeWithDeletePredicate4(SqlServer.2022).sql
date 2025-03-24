BeforeExecute
--  SqlServer.2022

SELECT TOP (1)
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
--  SqlServer.2022
DECLARE @patient Int -- Int32
SET     @patient = 2

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t].[PersonID] as [source_ID],
		[t].[FirstName] as [source_FirstName],
		[t].[LastName] as [source_LastName],
		[t].[MiddleName] as [source_MiddleName],
		[t].[Gender] as [source_Gender]
	FROM
		[Person] [t]
			LEFT JOIN [Patient] [a_Patient] ON [t].[PersonID] = [a_Patient].[PersonID]
	WHERE
		[a_Patient].[PersonID] = @patient
) [Source]
(
	[source_ID],
	[source_FirstName],
	[source_LastName],
	[source_MiddleName],
	[source_Gender]
)
ON ([Target].[PersonID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[FirstName] = [Source].[source_FirstName],
	[LastName] = [Source].[source_LastName],
	[MiddleName] = [Source].[source_MiddleName],
	[Gender] = [Source].[source_Gender]

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
	[Source].[source_FirstName],
	[Source].[source_LastName],
	[Source].[source_MiddleName],
	[Source].[source_Gender]
)
WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		[a_Patient_1].[PersonID]
	FROM
		[Patient] [a_Patient_1]
	WHERE
		[Target].[PersonID] = [a_Patient_1].[PersonID]
) = @patient THEN DELETE
;

BeforeExecute
--  SqlServer.2022
DECLARE @patient Int -- Int32
SET     @patient = 3

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t].[PersonID] as [source_ID],
		[t].[FirstName] as [source_FirstName],
		[t].[LastName] as [source_LastName],
		[t].[MiddleName] as [source_MiddleName],
		[t].[Gender] as [source_Gender]
	FROM
		[Person] [t]
			LEFT JOIN [Patient] [a_Patient] ON [t].[PersonID] = [a_Patient].[PersonID]
	WHERE
		[a_Patient].[PersonID] = @patient
) [Source]
(
	[source_ID],
	[source_FirstName],
	[source_LastName],
	[source_MiddleName],
	[source_Gender]
)
ON ([Target].[PersonID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[FirstName] = [Source].[source_FirstName],
	[LastName] = [Source].[source_LastName],
	[MiddleName] = [Source].[source_MiddleName],
	[Gender] = [Source].[source_Gender]

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
	[Source].[source_FirstName],
	[Source].[source_LastName],
	[Source].[source_MiddleName],
	[Source].[source_Gender]
)
WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		[a_Patient_1].[PersonID]
	FROM
		[Patient] [a_Patient_1]
	WHERE
		[Target].[PersonID] = [a_Patient_1].[PersonID]
) = @patient THEN DELETE
;

