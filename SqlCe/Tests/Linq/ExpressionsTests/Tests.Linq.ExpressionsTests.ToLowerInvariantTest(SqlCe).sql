-- SqlCe

SELECT
	Lower([p].[Taxonomy]) as [c1]
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = 'psychiatry'

