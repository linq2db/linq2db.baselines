BeforeExecute
-- Firebird.3 Firebird3
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
			"element_services" "ct"
				INNER JOIN "component_categories" "ctg" ON "ct"."id" = "ctg"."service_id"
				INNER JOIN "Components" "cm" ON "ctg"."id" = "cm"."category_id" AND NOT "cm"."is_deleted"
		WHERE
			"ct"."id" = 'TestProcessService' AND "component_categories"."id" = "ctg"."id"
	)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" AND "x"."service_id" = 'TestProcessService'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	NOT "x"."is_deleted" AND "x"."service_id" <> 'TestProcessService'

