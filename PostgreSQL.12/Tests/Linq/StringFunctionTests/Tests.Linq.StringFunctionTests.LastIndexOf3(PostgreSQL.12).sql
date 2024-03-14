BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	'123' || p."FirstName" || '0123451234'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND CASE
		WHEN Position('123' in Substring(Substring('123' || p."FirstName" || '0123451234', 1, 11), 6, Length(Substring('123' || p."FirstName" || '0123451234', 1, 11)) - 6)) + 5 = 0
			THEN -1
		ELSE 11 - Position('321' in Reverse(Substring('123' || p."FirstName" || '0123451234', 6, 6))) - 2
	END = 8

