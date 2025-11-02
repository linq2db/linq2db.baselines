-- Firebird.2.5 Firebird
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
				INNER JOIN "MainTable" "a_MainRequired" ON "p"."Id" = "a_MainRequired"."Id"
		WHERE
			"p"."Id" = @id AND "MainTable"."Id" = "a_MainRequired"."Id" AND
			("MainTable"."Field" = "a_MainRequired"."Field" OR "MainTable"."Field" IS NULL AND "a_MainRequired"."Field" IS NULL)
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

