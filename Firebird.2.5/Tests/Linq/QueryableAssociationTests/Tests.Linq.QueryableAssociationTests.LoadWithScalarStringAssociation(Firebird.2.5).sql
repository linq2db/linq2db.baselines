-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	(
		SELECT FIRST 1
			"se"."Value"
		FROM
			"StringAssociationValue" "se"
		WHERE
			"se"."Id" = "t1"."Id"
	),
	(
		SELECT FIRST 1
			"a_Association"."Value"
		FROM
			"StringAssociationValue" "a_Association"
		WHERE
			"a_Association"."Id" = "t1"."Id"
	)
FROM
	"StringAssociationOwner" "t1"

