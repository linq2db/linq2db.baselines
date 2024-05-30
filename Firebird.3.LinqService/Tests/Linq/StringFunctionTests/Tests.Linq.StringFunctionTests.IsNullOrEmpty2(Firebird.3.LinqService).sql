BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN "p"."FirstName" IS NULL OR Char_Length("p"."FirstName") = 0
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

