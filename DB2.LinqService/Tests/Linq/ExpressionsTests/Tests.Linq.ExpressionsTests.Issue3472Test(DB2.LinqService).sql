BeforeExecute
-- DB2 DB2.LUW DB2LUW

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

