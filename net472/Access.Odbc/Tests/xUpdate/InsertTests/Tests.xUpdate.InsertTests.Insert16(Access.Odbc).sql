BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @name NVarChar(8) -- String
SET     @name = 'Insert16'
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
	CStr(Len(?) + ?),
	'M'
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

