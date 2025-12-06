-- Informix.DB2 Informix

SELECT
	Lower(p.Taxonomy)
FROM
	Doctor p
WHERE
	Lower(p.Taxonomy) = 'psychiatry'

