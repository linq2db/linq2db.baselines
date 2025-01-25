BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(3) -- String
SET     @p = '123'

SELECT
	p."PersonID",
	'123' || p."FirstName" || '0123451234'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND 1 = Position('321' in Reverse(Substring('123' || p."FirstName" || '0123451234', 6, 6))) AND
	(Position(:p in Substring(Substring('123' || p."FirstName" || '0123451234', 1, 11), 6, Length(Substring('123' || p."FirstName" || '0123451234', 1, 11)) - 6)) + 5 <> 0 OR Position(:p in Substring(Substring('123' || p."FirstName" || '0123451234', 1, 11), 6, Length(Substring('123' || p."FirstName" || '0123451234', 1, 11)) - 6)) IS NULL)

