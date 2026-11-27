-- SapHana.Native SapHana
SELECT
	"x"."Id",
	"t1"."Association"
FROM
	"StringAssociationOwner" "x"
		LEFT JOIN LATERAL (
			SELECT
				"a_Association"."Value" as "Association"
			FROM
				"StringAssociationValue" "a_Association"
			WHERE
				"a_Association"."Id" = "x"."Id"
			LIMIT 1
		) "t1" ON 1=1
WHERE
	"t1"."Association" IS NOT NULL AND "t1"."Association" <> 'unknown'

