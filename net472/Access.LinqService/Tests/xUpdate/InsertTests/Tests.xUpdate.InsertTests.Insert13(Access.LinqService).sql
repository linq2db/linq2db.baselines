BeforeExecute
-- Access AccessOleDb

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

