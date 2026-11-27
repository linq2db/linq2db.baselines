-- Firebird.5 Firebird4
SELECT
	"t"."Id"
FROM
	"SqlPropertyAssociationEntity" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SqlPropertyAssociationRelation" "a_relationship"
		WHERE
			"t"."Id" = "a_relationship"."EntityId"
	)

