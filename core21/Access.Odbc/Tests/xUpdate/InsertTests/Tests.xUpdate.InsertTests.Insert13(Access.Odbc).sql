BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'FirstName',
	'LastName',
	'M'
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 4

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > ?

