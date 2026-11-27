-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	(
		SELECT
			"se"."Value"
		FROM
			"StringAssociationValue" "se"
		WHERE
			"se"."Id" = "t1"."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"StringAssociationOwner" "t1"

