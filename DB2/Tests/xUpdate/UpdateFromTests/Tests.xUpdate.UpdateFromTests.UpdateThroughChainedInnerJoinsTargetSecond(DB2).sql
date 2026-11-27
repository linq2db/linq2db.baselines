-- DB2 DB2.LUW DB2LUW
DECLARE @is_deleted SmallInt(4) -- Int16
SET     @is_deleted = 1

UPDATE
	"ComponentCategoryRow"
SET
	"is_deleted" = CAST(@is_deleted AS smallint)
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

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"ComponentCategoryRow" "x"
WHERE
	"x"."is_deleted" AND "x"."service_id" = 'TestProcessService'

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"ComponentCategoryRow" "x"
WHERE
	NOT "x"."is_deleted" AND "x"."service_id" <> 'TestProcessService'

