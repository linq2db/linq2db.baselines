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
			"ComponentCategoryRow" "ct"
				INNER JOIN "ElementServiceRow" "sr" ON "sr"."id" = "ct"."service_id"
				INNER JOIN "ComponentRow" "cm" ON "ct"."id" = "cm"."category_id" AND NOT "cm"."is_deleted"
		WHERE
			"sr"."id" = 'TestProcessService' AND "ComponentCategoryRow"."id" = "ct"."id"
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

