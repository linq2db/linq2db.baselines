BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t2"."Id",
	"t1"."ExpressionMethod"
FROM
	"Issue4723Table1" "t2"
		LEFT JOIN LATERAL (
			SELECT
				"se"."Value" as "ExpressionMethod"
			FROM
				"Issue4723Table2" "se"
			WHERE
				"se"."Id" = "t2"."Id"
			LIMIT 1
		) "t1" ON 1=1

