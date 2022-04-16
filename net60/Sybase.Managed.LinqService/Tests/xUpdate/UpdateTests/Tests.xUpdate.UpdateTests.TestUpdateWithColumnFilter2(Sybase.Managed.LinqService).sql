BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'
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

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'

SELECT TOP 2
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[t1].[FirstName] = @FirstName
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT TOP 2
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = @ID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName UniVarChar(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[MiddleName] = @MiddleName,
	[t1].[Gender] = @Gender
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT TOP 2
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @ID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM [Person]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = @ID

