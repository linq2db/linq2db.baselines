BeforeExecute
-- Firebird.4 Firebird4
DECLARE @is_deleted Boolean
SET     @is_deleted = TRUE

UPDATE
	"component_categories"
SET
	"is_deleted" = CAST(@is_deleted AS BOOLEAN)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"component_categories" "ct"
				INNER JOIN "element_services" "sr" ON "sr"."id" = "ct"."service_id"
				INNER JOIN "Components" "cm" ON "ct"."id" = "cm"."category_id" AND NOT "cm"."is_deleted"
		WHERE
			"sr"."id" = 'TestProcessService' AND "component_categories"."id" = "ct"."id"
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" AND "x"."service_id" = 'TestProcessService'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	NOT "x"."is_deleted" AND "x"."service_id" <> 'TestProcessService'

