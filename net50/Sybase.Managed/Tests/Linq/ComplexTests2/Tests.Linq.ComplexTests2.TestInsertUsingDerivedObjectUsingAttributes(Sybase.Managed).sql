BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName UniVarChar(4) -- String
SET     @MiddleName = 'test'
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

SELECT TOP 1
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = 'test_inherited_insert'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName UniVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
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

SELECT TOP 1
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = 'test_inherited_insert'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = 'test_inherited_insert'

