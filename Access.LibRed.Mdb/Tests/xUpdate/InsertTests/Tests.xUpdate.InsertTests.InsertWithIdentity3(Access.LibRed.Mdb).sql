-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	@@IDENTITY

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'John' AND [p].[LastName] = 'Shepard'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

