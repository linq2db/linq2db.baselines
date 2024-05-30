BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName || ' ' || 1 = 'John 1'

