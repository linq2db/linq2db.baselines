-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName NVarChar -- String
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	@@IDENTITY

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 5

SELECT
	1
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 5

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	'negative'
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 5

SELECT
	1
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

