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
			"ComponentCategoryRow" "ct"
				INNER JOIN "ElementServiceRow" "sr" ON "sr"."id" = "ct"."service_id"
				INNER JOIN "ComponentRow" "cm" ON "ct"."id" = "cm"."category_id" AND NOT "cm"."is_deleted"
		WHERE
			"sr"."id" = 'TestProcessService' AND "ComponentCategoryRow"."id" = "ct"."id"
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

