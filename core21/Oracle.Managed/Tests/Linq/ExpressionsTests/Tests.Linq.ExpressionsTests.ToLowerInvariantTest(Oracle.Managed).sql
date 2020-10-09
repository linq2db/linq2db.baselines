BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Lower(p.Taxonomy)
FROM
	Doctor p
WHERE
	Lower(p.Taxonomy) = 'psychiatry'

