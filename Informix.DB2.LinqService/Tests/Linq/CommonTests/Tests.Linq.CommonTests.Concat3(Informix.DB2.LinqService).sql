BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.FirstName
FROM
	Person p
WHERE
	(p.FirstName || ' 12') = 'John 12'

