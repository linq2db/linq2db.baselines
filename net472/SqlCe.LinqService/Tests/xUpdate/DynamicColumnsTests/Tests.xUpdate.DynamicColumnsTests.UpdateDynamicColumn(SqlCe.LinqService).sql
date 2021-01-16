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
	'Limonadovy',
	'M'
)

BeforeExecute
-- SqlCe

UPDATE
	[Person]
SET
	[Person].[FirstName] = 'Johnny'
WHERE
	[Person].[LastName] = 'Limonadovy'

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[LastName] = 'Limonadovy'

