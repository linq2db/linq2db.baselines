BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = 'psychiatry'

