BeforeExecute
-- SqlCe

SELECT
	'I-' + CAST([x].[PersonID] AS NVarChar(11)) as [Id],
	[x].[FirstName] as [Name]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL as [Id],
	'QUASI-' + [x_1].[FirstName] as [Name]
FROM
	[Person] [x_1]

