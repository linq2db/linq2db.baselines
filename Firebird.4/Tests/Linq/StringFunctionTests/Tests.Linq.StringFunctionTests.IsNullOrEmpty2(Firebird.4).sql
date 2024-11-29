BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN Char_Length("p"."FirstName") = 0 THEN TRUE
		ELSE FALSE
	END
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

