BeforeExecute
-- SqlCe

SELECT
	'I-' + Convert(NVarChar(11), [x].[PersonID]) as [Id],
	[x].[FirstName] as [Name]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL as [Id],
	'QUASI-' + [x_1].[FirstName] as [Name]
FROM
	[Person] [x_1]

