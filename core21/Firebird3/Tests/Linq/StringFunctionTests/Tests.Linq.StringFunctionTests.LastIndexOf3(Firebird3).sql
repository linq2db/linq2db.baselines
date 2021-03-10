BeforeExecute
-- Firebird3 Firebird
DECLARE @Length_2 Integer -- Int32
SET     @Length_2 = 9

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN Position('123', Left('123' || "p"."FirstName" || '0123451234', 11), 6) = 0
			THEN -1
		ELSE @Length_2 - Position('321', Reverse(Substring(('123' || "p"."FirstName" || '0123451234') from 6 for 6)))
	END = 8 AND
	"p"."PersonID" = 1

