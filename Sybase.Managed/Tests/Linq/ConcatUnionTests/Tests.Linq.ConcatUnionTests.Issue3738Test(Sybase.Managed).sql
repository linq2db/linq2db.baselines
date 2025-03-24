BeforeExecute
--  Sybase.Managed Sybase

SELECT
	'I-' + CAST([x].[PersonID] AS VarChar(11)),
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL,
	'QUASI-' + [x_1].[FirstName]
FROM
	[Person] [x_1]

