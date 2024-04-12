BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Taxonomy
FROM
	Doctor p
WHERE
	Lower(p.Taxonomy) = 'psychiatry'

