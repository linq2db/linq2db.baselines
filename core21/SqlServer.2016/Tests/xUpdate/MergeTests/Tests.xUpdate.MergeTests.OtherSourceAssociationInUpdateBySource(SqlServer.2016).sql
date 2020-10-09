BeforeExecute
-- SqlServer.2016 SqlServer.2012

DELETE [t1]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DELETE [t1]
FROM
	[Doctor] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'first 1'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'last 1'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'F'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'first 2'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'last 2'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'first 3'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'last 3'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'O'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'first 4'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'last 4'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'first 5'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'last 5'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'F'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'first 6'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'last 6'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @PersonID Int -- Int32
SET     @PersonID = 124
DECLARE @Taxonomy NVarChar(4000) -- String
SET     @Taxonomy = N'Dr. Lector'

INSERT INTO [Doctor]
(
	[PersonID],
	[Taxonomy]
)
VALUES
(
	@PersonID,
	@Taxonomy
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @PersonID Int -- Int32
SET     @PersonID = 125
DECLARE @Taxonomy NVarChar(4000) -- String
SET     @Taxonomy = N'Dr. who???'

INSERT INTO [Doctor]
(
	[PersonID],
	[Taxonomy]
)
VALUES
(
	@PersonID,
	@Taxonomy
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @PersonID Int -- Int32
SET     @PersonID = 122
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'sick'

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
-- SqlServer.2016 SqlServer.2012
DECLARE @PersonID Int -- Int32
SET     @PersonID = 123
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'very sick'

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
-- SqlServer.2016 SqlServer.2012

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [ID]
	FROM
		[Person] [t1]
) [Source]
(
	[ID]
)
ON ([Target].[PersonID] = [Source].[ID] + 10)

WHEN NOT MATCHED By Source AND [Target].[FirstName] = N'first 3' THEN UPDATE
SET
	[Target].[FirstName] = N'Updated',
	[Target].[LastName] = (
		SELECT
			[a_Person].[Diagnosis]
		FROM
			[Patient] [a_Patient_1]
				CROSS APPLY (
					SELECT
						[a_Patient].[Diagnosis]
					FROM
						[Person] [t3]
							OUTER APPLY (
								SELECT
									[t2].[Diagnosis]
								FROM
									[Patient] [t2]
								WHERE
									[t3].[PersonID] = [t2].[PersonID]
							) [a_Patient]
					WHERE
						[a_Patient_1].[PersonID] = [t3].[PersonID]
				) [a_Person]
		WHERE
			[Target].[PersonID] = [a_Patient_1].[PersonID]
	)
;

BeforeExecute
-- SqlServer.2016 SqlServer.2012

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

