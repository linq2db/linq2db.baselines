BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"TableToInsert" "t1"
WHERE
	EXISTS(
		SELECT
			"r"."Id"
		FROM
			"TableToInsert" "t"
				INNER JOIN (
					SELECT 2 AS "Id" FROM rdb$database
					UNION ALL
					SELECT 3 FROM rdb$database) "r" ON "t"."Id" = "r"."Id"
		WHERE
			"t1"."Id" = "t"."Id"
	)

