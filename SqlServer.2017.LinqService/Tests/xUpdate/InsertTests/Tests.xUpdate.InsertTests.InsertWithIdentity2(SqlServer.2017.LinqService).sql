BeforeExecute
-- SqlServer.2017 (asynchronously)

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- SqlServer.2017 (asynchronously)

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

BeforeExecute
-- SqlServer.2017 (asynchronously)

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

BeforeExecute
-- SqlServer.2017 (asynchronously)

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

