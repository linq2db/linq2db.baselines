BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Не ASCII'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Last Name'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'Mid'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'U'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'Negative'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT TOP (1)
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

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
		[a_Patient].[PersonID] = @PersonID AND [a_Patient].[PersonID] IS NOT NULL
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
) = @PersonID AND
(
	SELECT
		[a_Patient_1].[PersonID]
	FROM
		[Patient] [a_Patient_1]
	WHERE
		[Target].[PersonID] = [a_Patient_1].[PersonID]
) IS NOT NULL THEN DELETE
;

BeforeExecute
DisposeTransaction
