BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"t1"."Association"
FROM
	"Issue4723Table1" "x"
		LEFT JOIN (
			SELECT
				"a_Association"."Value" as "Association",
				ROW_NUMBER() OVER (PARTITION BY "a_Association"."Id" ORDER BY "a_Association"."Id") as "rn",
				"a_Association"."Id"
			FROM
				"Issue4723Table2" "a_Association"
		) "t1" ON "t1"."Id" = "x"."Id" AND "t1"."rn" <= 1
WHERE
	"t1"."Association" IS NOT NULL AND "t1"."Association" <> 'unknown'

