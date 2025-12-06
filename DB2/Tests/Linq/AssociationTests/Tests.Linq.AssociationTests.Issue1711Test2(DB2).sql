-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id"
FROM
	"Entity1711" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" "r"
		WHERE
			"r"."Deleted" = 0 AND "r"."EntityId" = "t"."Id"
	)

