-- Access.Ace.OleDb AccessOleDb

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

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = 'Limonadovy'

-- Access.Ace.OleDb AccessOleDb

UPDATE
	[Person] [c_1]
SET
	[c_1].[FirstName] = 'Johnny'
WHERE
	[c_1].[LastName] = 'Limonadovy'

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'Johnny' AND [c_1].[LastName] = 'Limonadovy'

