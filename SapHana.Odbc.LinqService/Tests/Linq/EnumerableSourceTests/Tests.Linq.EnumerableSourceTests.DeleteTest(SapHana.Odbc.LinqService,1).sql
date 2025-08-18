BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DELETE FROM
	"TableToInsert" "t1"
WHERE
	EXISTS(
		SELECT
			"r"."Id"
		FROM
			"TableToInsert" "t"
				INNER JOIN (
					SELECT 2 AS "Id" FROM DUMMY
					UNION ALL
					SELECT 3 FROM DUMMY) "r" ON "t"."Id" = "r"."Id"
		WHERE
			"t1"."Id" = "t"."Id"
	)

