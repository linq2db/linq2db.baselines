BeforeExecute
-- Informix.DB2 Informix

SELECT
	MAX(r.PersonID)
FROM
	Person r
UNION ALL
SELECT
	r_1.PersonID
FROM
	Person r_1

