BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."PersonID",
	"t1"."LastName",
	CASE
		WHEN "t1"."PersonID" IN (1, 3) THEN TRUE
		ELSE FALSE
	END
FROM
	"Person" "t1"
ORDER BY
	CASE
		WHEN "t1"."PersonID" IN (1, 3) THEN TRUE
		ELSE FALSE
	END

