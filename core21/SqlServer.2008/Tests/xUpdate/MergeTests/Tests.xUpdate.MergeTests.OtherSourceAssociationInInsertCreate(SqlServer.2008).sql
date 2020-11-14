BeforeExecute
-- SqlServer.2008

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Doctor] [t1]

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
DECLARE @PersonID Int -- Int32
SET     @PersonID = 9
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
-- SqlServer.2008
DECLARE @PersonID Int -- Int32
SET     @PersonID = 10
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
-- SqlServer.2008
DECLARE @PersonID Int -- Int32
SET     @PersonID = 7
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
-- SqlServer.2008
DECLARE @PersonID Int -- Int32
SET     @PersonID = 8
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
-- SqlServer.2008

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
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	[Source].[Diagnosis],
	N'Inserted 2',
	N'U'
)
;

BeforeExecute
-- SqlServer.2008

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

