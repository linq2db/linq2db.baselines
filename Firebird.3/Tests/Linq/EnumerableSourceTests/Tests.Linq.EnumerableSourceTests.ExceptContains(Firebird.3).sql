BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN "r"."PersonID" IN (1, 2, 3) THEN TRUE
		ELSE FALSE
	END
FROM
	"Person" "r"

