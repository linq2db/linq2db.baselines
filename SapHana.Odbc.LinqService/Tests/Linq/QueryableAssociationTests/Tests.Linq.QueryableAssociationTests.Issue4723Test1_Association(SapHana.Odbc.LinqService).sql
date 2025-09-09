BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t3"."Id",
	"t1"."ExpressionMethod",
	"t2"."Association"
FROM
	"Issue4723Table1" "t3"
		LEFT JOIN LATERAL (
			SELECT
				"se"."Value" as "ExpressionMethod"
			FROM
				"Issue4723Table2" "se"
			WHERE
				"se"."Id" = "t3"."Id"
			LIMIT 1
		) "t1" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				"a_Association"."Value" as "Association"
			FROM
				"Issue4723Table2" "a_Association"
			WHERE
				"a_Association"."Id" = "t3"."Id"
			LIMIT 1
		) "t2" ON 1=1

