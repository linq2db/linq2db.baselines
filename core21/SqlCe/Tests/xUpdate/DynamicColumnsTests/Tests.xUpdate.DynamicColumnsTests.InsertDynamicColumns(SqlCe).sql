BeforeExecute
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
	'The Dynamic',
	'M'
)

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[LastName] = 'The Dynamic'

