BeforeExecute
-- SqlServer.2019

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

