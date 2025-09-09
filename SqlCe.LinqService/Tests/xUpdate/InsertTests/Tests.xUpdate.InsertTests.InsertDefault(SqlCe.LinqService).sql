BeforeExecute
-- SqlCe (asynchronously)

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

BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] = 'InsertDefault'

