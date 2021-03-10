BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Length_2 Integer -- Int32
SET     @Length_2 = 9

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	CASE
		WHEN Position('123' in Substring(Substring('123' || p."FirstName" || '0123451234', 1, 11), 6, Length(Substring('123' || p."FirstName" || '0123451234', 1, 11)) - 6)) + 5 = 0
			THEN -1
		ELSE :Length_2 - Position('321' in Reverse(Substring('123' || p."FirstName" || '0123451234', 6, 6)))
	END = 8 AND
	p."PersonID" = 1

