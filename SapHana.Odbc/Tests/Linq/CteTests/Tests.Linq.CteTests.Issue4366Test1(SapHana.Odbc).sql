BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Dto"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Dto"
(
	"id"        Integer       NOT NULL,
	"name"      NVarChar(255)     NULL,
	"parent_id" Integer           NULL,
	"FullName"  NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

WITH "d"
(
	"FullName",
	"id",
	"parent_id",
	"name"
)
AS
(
	SELECT
		"a"."name",
		"a"."id",
		"a"."parent_id",
		"a"."name"
	FROM
		"Dto" "a"
	WHERE
		"a"."parent_id" IS NULL
	UNION ALL
	SELECT
		"recur"."FullName" || ' > ' || "t1"."name",
		"t1"."id",
		"t1"."parent_id",
		"t1"."name"
	FROM
		"Dto" "t1"
			INNER JOIN "d" "recur" ON "recur"."id" = "t1"."parent_id"
)
SELECT
	"t2"."id",
	"t2"."parent_id",
	"t2"."name",
	"t2"."FullName"
FROM
	"d" "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Dto"

