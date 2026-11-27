-- DB2 DB2.LUW DB2LUW
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

