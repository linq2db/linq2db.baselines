﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

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

BeforeExecute
DisposeTransaction
