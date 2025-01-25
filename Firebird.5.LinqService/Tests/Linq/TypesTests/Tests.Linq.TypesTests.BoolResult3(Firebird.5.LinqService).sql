BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "p"."PersonID" = 1 THEN TRUE
		ELSE FALSE
	END
FROM
	"Person" "p"

