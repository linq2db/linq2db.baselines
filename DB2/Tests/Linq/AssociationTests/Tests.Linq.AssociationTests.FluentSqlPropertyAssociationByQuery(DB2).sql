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
			"SqlPropertyAssociationRelation" "r"
		WHERE
			"r"."Deleted" = 0 AND "r"."EntityId" = "t"."Id"
	)

