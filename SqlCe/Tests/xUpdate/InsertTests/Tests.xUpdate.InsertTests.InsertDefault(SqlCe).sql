-- SqlCe

INSERT INTO [Person]
(
	[FirstName],
	[MiddleName],
	[LastName],
	[Gender]
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] = 'InsertDefault'

