BeforeExecute
-- Sybase.Managed Sybase

SELECT
	'I-' + Convert(VarChar(11), [x].[PersonID]),
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL,
	'QUASI-' + [x_1].[FirstName]
FROM
	[Person] [x_1]

