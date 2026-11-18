-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%'

