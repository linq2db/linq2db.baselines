BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN Char_Length("p"."FirstName") = 0 THEN '1'
		ELSE '0'
	END
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

