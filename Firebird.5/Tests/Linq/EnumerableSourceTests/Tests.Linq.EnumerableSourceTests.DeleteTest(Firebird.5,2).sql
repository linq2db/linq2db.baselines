BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"TableToInsert" "t1"
WHERE
	EXISTS(
		SELECT
			"r"."Id"
		FROM
			"TableToInsert" "t"
				INNER JOIN (
					SELECT 3 AS "Id" FROM rdb$database
					UNION ALL
					SELECT 4 FROM rdb$database) "r" ON "t"."Id" = "r"."Id"
		WHERE
			"t1"."Id" = "t"."Id"
	)

