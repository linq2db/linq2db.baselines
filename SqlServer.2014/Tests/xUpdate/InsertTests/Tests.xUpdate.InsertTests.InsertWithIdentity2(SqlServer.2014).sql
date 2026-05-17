-- SqlServer.2014

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- SqlServer.2014

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'Shepard',
	'M'
)

SELECT SCOPE_IDENTITY()

-- SqlServer.2014

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = N'John' AND [p].[LastName] = N'Shepard'

-- SqlServer.2014

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

