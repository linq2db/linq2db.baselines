-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"AssociatedTable" "p"
				LEFT JOIN "MainTable" "a_MainOptional" ON "p"."Id" = "a_MainOptional"."Id"
		WHERE
			"p"."Id" = @id AND "MainTable"."Id" = "a_MainOptional"."Id"
	)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

