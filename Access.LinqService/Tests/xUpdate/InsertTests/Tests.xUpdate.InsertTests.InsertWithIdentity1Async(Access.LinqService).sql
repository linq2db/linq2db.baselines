BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

BeforeExecute
-- Access AccessOleDb (asynchronously)

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
-- Access AccessOleDb (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

