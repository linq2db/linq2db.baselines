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

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'John' AND [c_1].[LastName] = 'The Dynamic'

