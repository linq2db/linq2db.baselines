BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName IN ('oh', 'oh''', 'oh\')

