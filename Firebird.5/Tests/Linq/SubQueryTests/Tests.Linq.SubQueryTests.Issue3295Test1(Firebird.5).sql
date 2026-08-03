-- Firebird.5 Firebird4
SELECT
	CASE
		WHEN "t1"."PersonID" IS NOT NULL THEN "t1"."PersonID"
		ELSE "x"."PersonID"
	END,
	CASE
		WHEN "t1"."PersonID" IS NOT NULL THEN "t1"."Diagnosis"
		ELSE 'abc'
	END
FROM
	"Person" "x"
		LEFT JOIN LATERAL (
			SELECT
				"y"."PersonID",
				"y"."Diagnosis"
			FROM
				"Patient" "y"
			WHERE
				"y"."PersonID" = "x"."PersonID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
WHERE
	"t1"."PersonID" IS NULL OR "t1"."Diagnosis" = 'abc'

