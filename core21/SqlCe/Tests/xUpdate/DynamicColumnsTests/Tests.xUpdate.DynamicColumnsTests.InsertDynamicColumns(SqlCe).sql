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

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'John' AND [c_1].[LastName] = 'The Dynamic'

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[LastName] = 'The Dynamic'

