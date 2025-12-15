-- Firebird.5 Firebird4

SELECT
	"u"."PersonID",
	"x"."PersonID"
FROM
	"Person" "u"
		CROSS JOIN LATERAL (
			SELECT
				"l"."PersonID"
			FROM
				(
					SELECT
						1 as "c1"
					FROM rdb$database
				) "r"
					LEFT JOIN "Patient" "l" ON "l"."PersonID" = "u"."PersonID"
		) "x"

