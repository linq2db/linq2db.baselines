-- PostgreSQL.15 PostgreSQL12
SELECT
	p."PersonID",
	'123' || p."FirstName" || '0123451234'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND 1 = Position('321' in Reverse(Substring('123' || p."FirstName" || '0123451234', 6, 6))) AND
	CASE
		WHEN Position('123' in Substring(Substring('123' || p."FirstName" || '0123451234', 1, 11), 6)) = 0
			THEN 0
		ELSE Position('123' in Substring(Substring('123' || p."FirstName" || '0123451234', 1, 11), 6)) + 5
	END <> 0

