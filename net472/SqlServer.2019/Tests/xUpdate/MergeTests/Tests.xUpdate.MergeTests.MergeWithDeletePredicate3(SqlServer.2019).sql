BeforeExecute
-- SqlServer.2019 SqlServer.2017
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
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t1].[FirstName], 
	[t1].[PersonID], 
	[t1].[LastName], 
	[t1].[MiddleName], 
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
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
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT TOP (@take) 
	[_].[PersonID], 
	[_].[Diagnosis]
FROM
	[Patient] [_]
WHERE
	[_].[PersonID] = @ID

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @PersonID_1 Int -- Int32
SET     @PersonID_1 = 1
DECLARE @PersonID_2 Int -- Int32
SET     @PersonID_2 = 1

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

