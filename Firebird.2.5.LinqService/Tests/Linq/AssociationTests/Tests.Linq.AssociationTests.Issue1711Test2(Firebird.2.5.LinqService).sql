BeforeExecute
-- Firebird.2.5 Firebird

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
			"r"."Deleted" = '0' AND "r"."EntityId" = "t"."Id"
	)

