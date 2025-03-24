BeforeExecute
--  SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
--  SqlCe (asynchronously)

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
--  SqlCe (asynchronously)

SELECT @@IDENTITY

BeforeExecute
--  SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

