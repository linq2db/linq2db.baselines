BeforeExecute
-- SqlServer.Contained SqlServer.2019

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

