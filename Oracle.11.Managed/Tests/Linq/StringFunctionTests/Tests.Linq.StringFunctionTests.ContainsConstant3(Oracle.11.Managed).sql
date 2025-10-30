-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" IN ('oh', 'oh''', 'oh\')

