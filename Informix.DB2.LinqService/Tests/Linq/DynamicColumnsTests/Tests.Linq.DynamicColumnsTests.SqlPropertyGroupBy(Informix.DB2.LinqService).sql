BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.FirstName,
	COUNT(*)
FROM
	Person p
GROUP BY
	p.FirstName

