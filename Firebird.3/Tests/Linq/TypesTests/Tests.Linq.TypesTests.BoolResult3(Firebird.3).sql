BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN "p"."PersonID" = 1 THEN TRUE
		ELSE FALSE
	END
FROM
	"Person" "p"

