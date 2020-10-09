BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Lower(p.Taxonomy)
FROM
	Doctor p
WHERE
	Lower(p.Taxonomy) = 'psychiatry'

