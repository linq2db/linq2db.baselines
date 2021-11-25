BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.PersonID,
	pt.PersonID,
	d.Taxonomy
FROM
	Person p
		INNER JOIN Patient pt ON 1=1
		INNER JOIN Doctor d ON 1=1
ORDER BY
	p.PersonID,
	pt.PersonID,
	d.Taxonomy

