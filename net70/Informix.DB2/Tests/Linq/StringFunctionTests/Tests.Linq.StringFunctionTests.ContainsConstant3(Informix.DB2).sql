BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Person p
WHERE
	p.FirstName IN ('oh', 'oh''', 'oh\')

