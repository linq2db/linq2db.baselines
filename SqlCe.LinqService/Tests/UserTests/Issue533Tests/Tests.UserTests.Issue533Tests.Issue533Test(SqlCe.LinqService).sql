BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
-- SqlCe
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName NVarChar(12) -- String
SET     @FirstName = 'FirstName533'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName NVarChar(11) -- String
SET     @LastName = 'LastName533'

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

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (1)
	[_].[PersonID] as [ID],
	[_].[Gender],
	[_].[FirstName],
	[_].[MiddleName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

