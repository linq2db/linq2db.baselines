BeforeExecute
-- SqlServer.2016

SELECT
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry' AND Lower([p].[Taxonomy]) IS NOT NULL

