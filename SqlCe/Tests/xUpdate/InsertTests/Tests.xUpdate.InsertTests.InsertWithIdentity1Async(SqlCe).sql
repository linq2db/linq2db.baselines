-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

-- SqlCe

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

-- SqlCe

SELECT @@IDENTITY

-- SqlCe

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'John' AND [p].[LastName] = 'Shepard'

-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

