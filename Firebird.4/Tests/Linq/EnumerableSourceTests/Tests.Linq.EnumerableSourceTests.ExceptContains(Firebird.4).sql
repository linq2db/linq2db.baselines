BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN "r"."PersonID" IN (1, 2, 3) THEN TRUE
		ELSE FALSE
	END
FROM
	"Person" "r"

