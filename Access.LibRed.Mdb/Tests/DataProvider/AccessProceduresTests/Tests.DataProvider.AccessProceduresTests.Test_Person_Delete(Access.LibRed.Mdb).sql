-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	'first name',
	'last name',
	'middle name',
	'F'
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

[Person_Delete]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

