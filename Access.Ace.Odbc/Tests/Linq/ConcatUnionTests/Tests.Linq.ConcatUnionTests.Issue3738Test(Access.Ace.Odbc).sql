-- Access.Ace.Odbc AccessODBC

SELECT
	'I-' + CStr([x].[PersonID]),
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	IIF(False, '', NULL),
	'QUASI-' + [x_1].[FirstName]
FROM
	[Person] [x_1]

