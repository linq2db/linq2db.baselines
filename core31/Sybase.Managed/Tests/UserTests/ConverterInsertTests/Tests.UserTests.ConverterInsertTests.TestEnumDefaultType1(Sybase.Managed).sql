BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName UniVarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender UniVarChar(1) -- String
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
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] = @id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @FirstName UniVarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName UniVarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender UniVarChar(1) -- String
SET     @Gender = 'M'

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @PersonID AND
	[t1].[FirstName] = @FirstName AND
	[t1].[LastName] = @LastName AND
	[t1].[MiddleName] = @MiddleName AND
	[t1].[Gender] = @Gender

