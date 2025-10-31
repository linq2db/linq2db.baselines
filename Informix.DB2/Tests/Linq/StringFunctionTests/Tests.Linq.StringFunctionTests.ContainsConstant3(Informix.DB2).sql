-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName IN ('oh', 'oh''', 'oh\')

