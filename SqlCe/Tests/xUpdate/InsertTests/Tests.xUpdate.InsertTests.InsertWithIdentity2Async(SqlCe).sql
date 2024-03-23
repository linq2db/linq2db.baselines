BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
-- SqlCe (asynchronously)

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

BeforeExecute
-- SqlCe (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- SqlCe (asynchronously)

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

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

