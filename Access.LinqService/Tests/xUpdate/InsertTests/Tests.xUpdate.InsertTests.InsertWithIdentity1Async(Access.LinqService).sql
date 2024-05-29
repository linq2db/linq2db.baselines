BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

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
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

