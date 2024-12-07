BeforeExecute
-- SqlCe

SELECT
	'I-' + CAST([x].[PersonID] AS NVarChar(11)) as [c1],
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL as [c1],
	'QUASI-' + [x_1].[FirstName] as [FirstName]
FROM
	[Person] [x_1]

