BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 3

SELECT
	p."PersonID",
	'123' || p."FirstName" || '0123451234'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND (11 - Position('321' in Reverse(Substring('123' || p."FirstName" || '0123451234', 6, 6)))) - :Length = 7 AND
	Position('123' in Substring(Substring('123' || p."FirstName" || '0123451234', 1, 11), 6, Length(Substring('123' || p."FirstName" || '0123451234', 1, 11)) - 6)) + 5 <> 0

