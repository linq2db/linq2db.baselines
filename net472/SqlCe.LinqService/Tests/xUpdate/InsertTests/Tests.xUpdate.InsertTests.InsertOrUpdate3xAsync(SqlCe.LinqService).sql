BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] = 'John' AND [Person].[LastName] = 'Shepard'

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

