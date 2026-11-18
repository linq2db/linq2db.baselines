-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert14' + CASE
		WHEN (
			SELECT
				[p].[FirstName]
			FROM
				[Person] [p]
			WHERE
				[p].[PersonID] = 1
		) IS NULL
			THEN ''
		ELSE (
			SELECT
				[p].[FirstName]
			FROM
				[Person] [p]
			WHERE
				[p].[PersonID] = 1
		)
	END,
	'Shepard',
	'M'
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%'

