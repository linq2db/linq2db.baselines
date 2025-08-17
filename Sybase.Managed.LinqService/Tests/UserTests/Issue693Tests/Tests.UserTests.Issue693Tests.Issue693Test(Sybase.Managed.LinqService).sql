BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName UniVarChar(1) -- String
SET     @FirstName = 'a'
DECLARE @MiddleName UniVarChar(1) -- String
SET     @MiddleName = 'A'
DECLARE @LastName UniVarChar(1) -- String
SET     @LastName = 'b'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName UniVarChar(1) -- String
SET     @FirstName = 'c'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName UniVarChar(1) -- String
SET     @LastName = 'd'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id1 Integer -- Int32
SET     @id1 = 5

SELECT TOP 1
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id1

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id2 Integer -- Int32
SET     @id2 = 6

SELECT TOP 1
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id2

