-- Firebird.4 Firebird4
SELECT
	"t"."Id"
FROM
	"SqlPropertyAssociationEntity" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SqlPropertyAssociationRelation" "r"
		WHERE
			"r"."Deleted" = FALSE AND "r"."EntityId" = "t"."Id"
	)

