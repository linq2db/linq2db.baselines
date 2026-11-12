-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @name  -- Int32
SET     @name = 8
DECLARE @idx  -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	CStr(@name + @idx),
	'M'
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

