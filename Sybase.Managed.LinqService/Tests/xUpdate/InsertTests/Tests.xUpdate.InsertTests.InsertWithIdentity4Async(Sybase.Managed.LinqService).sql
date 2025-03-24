BeforeExecute
--  Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
--  Sybase.Managed Sybase (asynchronously)
DECLARE @FirstName UniVarChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName UniVarChar(7) -- String
SET     @LastName = 'Shepard'
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
--  Sybase.Managed Sybase (asynchronously)
DECLARE @FirstName UniVarChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName UniVarChar(7) -- String
SET     @LastName = 'Shepard'
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
--  Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

