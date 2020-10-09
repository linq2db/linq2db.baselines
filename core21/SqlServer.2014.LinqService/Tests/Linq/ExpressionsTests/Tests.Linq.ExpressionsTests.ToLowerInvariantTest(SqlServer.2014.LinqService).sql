BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

