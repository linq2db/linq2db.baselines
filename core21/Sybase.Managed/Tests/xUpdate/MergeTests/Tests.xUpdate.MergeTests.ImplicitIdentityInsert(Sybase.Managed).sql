BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Patient]
FROM
	[Patient] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Doctor]
FROM
	[Doctor] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(7) -- String
SET     @FirstName = 'first 1'
DECLARE @LastName UniVarChar(6) -- String
SET     @LastName = 'last 1'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(7) -- String
SET     @FirstName = 'first 2'
DECLARE @LastName UniVarChar(6) -- String
SET     @LastName = 'last 2'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(7) -- String
SET     @FirstName = 'first 3'
DECLARE @LastName UniVarChar(6) -- String
SET     @LastName = 'last 3'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'O'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(7) -- String
SET     @FirstName = 'first 4'
DECLARE @LastName UniVarChar(6) -- String
SET     @LastName = 'last 4'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(7) -- String
SET     @FirstName = 'first 5'
DECLARE @LastName UniVarChar(6) -- String
SET     @LastName = 'last 5'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(7) -- String
SET     @FirstName = 'first 6'
DECLARE @LastName UniVarChar(6) -- String
SET     @LastName = 'last 6'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 9
DECLARE @Taxonomy UniVarChar(10) -- String
SET     @Taxonomy = 'Dr. Lector'

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
-- Sybase.Managed Sybase
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 10
DECLARE @Taxonomy UniVarChar(10) -- String
SET     @Taxonomy = 'Dr. who???'

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
-- Sybase.Managed Sybase
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 7
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'sick'

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
-- Sybase.Managed Sybase
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 8
DECLARE @Diagnosis UniVarChar(9) -- String
SET     @Diagnosis = 'very sick'

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
-- Sybase.Managed Sybase

SELECT
	Max([_].[PersonID])
FROM
	[Person] [_]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [Person] [Target]
USING (
	SELECT
		[p].[PersonID] + 50 as [source_field0],
		[p].[FirstName],
		[p].[LastName],
		[p].[MiddleName],
		[p].[Gender]
	FROM
		[Person] [p]
) [Source]
(
	[source_field0],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
ON ([Target].[PersonID] + 50 = [Source].[source_field0] AND [Target].[FirstName] <> 'first 3')

WHEN NOT MATCHED AND [Source].[FirstName] = 'first 3' THEN
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

BeforeExecute
-- Sybase.Managed Sybase

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

