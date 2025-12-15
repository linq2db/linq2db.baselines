-- SqlServer.2014.MS SqlServer.2014

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'Insert14' + (
		SELECT
			[p].[FirstName]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	),
	N'Shepard',
	'M'
)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

-- SqlServer.2014.MS SqlServer.2014

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

