-- Firebird.4 Firebird4
DECLARE @is_deleted Boolean
SET     @is_deleted = TRUE

UPDATE
	"ComponentCategoryRow"
SET
	"is_deleted" = CAST(@is_deleted AS BOOLEAN)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"ElementServiceRow" "ct"
				INNER JOIN "ComponentCategoryRow" "ctg" ON "ct"."id" = "ctg"."service_id"
				INNER JOIN "ComponentRow" "cm" ON "ctg"."id" = "cm"."category_id" AND NOT "cm"."is_deleted"
		WHERE
			"ct"."id" = 'TestProcessService' AND "ComponentCategoryRow"."id" = "ctg"."id"
	)

-- Firebird.4 Firebird4
SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"ComponentCategoryRow" "x"
WHERE
	"x"."is_deleted" AND "x"."service_id" = 'TestProcessService'

-- Firebird.4 Firebird4
SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"ComponentCategoryRow" "x"
WHERE
	NOT "x"."is_deleted" AND "x"."service_id" <> 'TestProcessService'

