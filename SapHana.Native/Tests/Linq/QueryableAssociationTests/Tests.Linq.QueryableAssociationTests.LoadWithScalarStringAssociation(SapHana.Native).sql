-- SapHana.Native SapHana
SELECT
	"t3"."Id",
	"t1"."ExpressionMethod",
	"t2"."Association"
FROM
	"StringAssociationOwner" "t3"
		LEFT JOIN LATERAL (
			SELECT
				"se"."Value" as "ExpressionMethod"
			FROM
				"StringAssociationValue" "se"
			WHERE
				"se"."Id" = "t3"."Id"
			LIMIT 1
		) "t1" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				"a_Association"."Value" as "Association"
			FROM
				"StringAssociationValue" "a_Association"
			WHERE
				"a_Association"."Id" = "t3"."Id"
			LIMIT 1
		) "t2" ON 1=1

