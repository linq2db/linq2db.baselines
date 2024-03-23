BeforeExecute
-- SqlServer.2008

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

