BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Lower(p.Taxonomy)
FROM
	Doctor p
WHERE
	Lower(p.Taxonomy) = 'psychiatry'

