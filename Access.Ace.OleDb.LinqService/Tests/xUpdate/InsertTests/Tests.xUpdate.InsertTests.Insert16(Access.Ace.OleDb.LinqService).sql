BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @name Integer -- Int32
SET     @name = 8
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	CStr(@name + @idx),
	'M'
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

