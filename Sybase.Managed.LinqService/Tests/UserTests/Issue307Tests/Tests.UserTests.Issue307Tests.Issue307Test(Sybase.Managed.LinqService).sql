BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName UniVarChar(12) -- String
SET     @FirstName = 'FirstName307'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName UniVarChar(11) -- String
SET     @LastName = 'LastName307'

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
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

