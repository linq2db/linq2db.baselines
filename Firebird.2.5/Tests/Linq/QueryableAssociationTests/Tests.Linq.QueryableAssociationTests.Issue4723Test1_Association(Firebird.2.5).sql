-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	(
		SELECT FIRST 1
			"se"."Value"
		FROM
			"Issue4723Table2" "se"
		WHERE
			"se"."Id" = "t1"."Id"
	),
	(
		SELECT FIRST 1
			"a_Association"."Value"
		FROM
			"Issue4723Table2" "a_Association"
		WHERE
			"a_Association"."Id" = "t1"."Id"
	)
FROM
	"Issue4723Table1" "t1"

