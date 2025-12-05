-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

-- Access.Ace.Odbc AccessODBC
DECLARE @name Int -- Int32
SET     @name = 8
DECLARE @idx Int -- Int32
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
	CStr(? + ?),
	'M'
)

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

