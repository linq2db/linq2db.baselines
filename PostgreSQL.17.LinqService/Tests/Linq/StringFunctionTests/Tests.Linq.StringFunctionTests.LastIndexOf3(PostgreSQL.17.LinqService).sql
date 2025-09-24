BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."PersonID",
	'123' || p."FirstName" || '0123451234'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND 1 = Position('321' in Reverse(Substring('123' || p."FirstName" || '0123451234', 6, 6))) AND
	Position('123' in Substring(Substring('123' || p."FirstName" || '0123451234', 1, 11), 6, Length(Substring('123' || p."FirstName" || '0123451234', 1, 11)) - 6)) + 5 <> 0

