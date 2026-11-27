-- SapHana.Native SapHana
SELECT
	"t2"."Id",
	"t1"."ExpressionMethod"
FROM
	"StringAssociationOwner" "t2"
		LEFT JOIN LATERAL (
			SELECT
				"se"."Value" as "ExpressionMethod"
			FROM
				"StringAssociationValue" "se"
			WHERE
				"se"."Id" = "t2"."Id"
			LIMIT 1
		) "t1" ON 1=1

