BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

