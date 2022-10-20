BeforeExecute
-- SqlServer.2022

SELECT
	N'I-' + Convert(VarChar(11), [x].[PersonID]),
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL,
	N'QUASI-' + [x_1].[FirstName]
FROM
	[Person] [x_1]

