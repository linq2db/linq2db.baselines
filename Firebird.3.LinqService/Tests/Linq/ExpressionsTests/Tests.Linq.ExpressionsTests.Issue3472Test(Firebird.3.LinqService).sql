BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	(
		SELECT
			COUNT(*)
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = "t1"."Id"
	)
FROM
	"Issue3472TableDCTX" "t1"

