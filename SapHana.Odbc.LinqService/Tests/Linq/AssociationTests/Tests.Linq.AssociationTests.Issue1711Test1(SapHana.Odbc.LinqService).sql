BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id"
FROM
	"Entity1711" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" "a_relationship"
		WHERE
			"t"."Id" = "a_relationship"."EntityId"
	)

