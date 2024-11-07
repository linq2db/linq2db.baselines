BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @name NVarChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx  -- Int32
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
	CStr(Len(?) + ?),
	'M'
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

