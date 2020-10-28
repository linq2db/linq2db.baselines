BeforeExecute
-- Firebird

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN Position('123', Left('123' || "p"."FirstName" || '0123451234', 11), 6) = 0
			THEN -1
		ELSE 11 - Position('321', Reverse(Substring(('123' || "p"."FirstName" || '0123451234') from 6 for 6))) - 2
	END = 8 AND
	"p"."PersonID" = 1

